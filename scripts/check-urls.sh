#!/bin/bash

# URL Checker Script for Learn In Public repository
# Validates internal and external links in markdown files

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$REPO_ROOT/logs/url-checks"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
LOG_FILE="$LOG_DIR/$DATE.log"
UNRESOLVED_FILE="$LOG_DIR/UNRESOLVED.md"

# Create log directory if needed
mkdir -p "$LOG_DIR"

# Initialize counters
TOTAL=0
VALID=0
INVALID=0
SKIPPED=0

# Arrays for tracking
declare -a BROKEN_LINKS

log() {
    echo "[$DATE $TIME] $1" | tee -a "$LOG_FILE"
}

check_internal_link() {
    local source_file="$1"
    local link="$2"
    local source_dir=$(dirname "$source_file")
    
    # Remove anchor if present
    local path="${link%%#*}"
    
    # Skip empty paths (anchor-only links)
    if [[ -z "$path" ]]; then
        return 0
    fi
    
    # Resolve relative path
    local target="$source_dir/$path"
    target=$(cd "$source_dir" && realpath -q "$path" 2>/dev/null || echo "")
    
    if [[ -z "$target" ]] || [[ ! -e "$target" ]]; then
        log "✗ MISSING: $link (from $source_file)"
        BROKEN_LINKS+=("$source_file: $link (missing file)")
        return 1
    fi
    
    log "✓ VALID: $link"
    return 0
}

check_external_link() {
    local source_file="$1"
    local url="$2"
    
    # Use curl with timeout and follow redirects
    local status
    status=$(curl -s -o /dev/null -w "%{http_code}" -L --max-time 10 "$url" 2>/dev/null || echo "000")
    
    if [[ "$status" =~ ^[23] ]]; then
        log "✓ VALID: $url ($status)"
        return 0
    else
        log "✗ INVALID: $url ($status)"
        BROKEN_LINKS+=("$source_file: $url (HTTP $status)")
        return 1
    fi
}

# Find all markdown files
echo "Scanning markdown files in $REPO_ROOT..."
log "=== URL Check Started ==="

while IFS= read -r -d '' file; do
    log "CHECKING: $file"
    
    # Extract markdown links: [text](url)
    while IFS= read -r link; do
        [[ -z "$link" ]] && continue
        ((TOTAL++))
        
        if [[ "$link" =~ ^https?:// ]]; then
            # External link
            if check_external_link "$file" "$link"; then
                ((VALID++))
            else
                ((INVALID++))
            fi
        elif [[ "$link" =~ ^mailto: ]] || [[ "$link" =~ ^tel: ]]; then
            # Skip mailto and tel links
            ((SKIPPED++))
            log "⊘ SKIPPED: $link (mailto/tel)"
        elif [[ "$link" =~ ^\# ]]; then
            # Anchor-only link (same file)
            ((SKIPPED++))
            log "⊘ SKIPPED: $link (anchor)"
        else
            # Internal link
            if check_internal_link "$file" "$link"; then
                ((VALID++))
            else
                ((INVALID++))
            fi
        fi
    done < <(grep -oP '\[([^\]]*)\]\(\K[^)]+' "$file" 2>/dev/null || true)
    
done < <(find "$REPO_ROOT" -name "*.md" -not -path "*/\.git/*" -not -path "*/.venv/*" -not -path "*/node_modules/*" -print0)

log "=== URL Check Complete ==="
log "Total: $TOTAL | Valid: $VALID | Invalid: $INVALID | Skipped: $SKIPPED"

# Update UNRESOLVED.md
if [[ ${#BROKEN_LINKS[@]} -gt 0 ]]; then
    cat > "$UNRESOLVED_FILE" << EOF
# Unresolved URLs

Last checked: $DATE $TIME

## Broken Links

EOF
    for link in "${BROKEN_LINKS[@]}"; do
        echo "- $link" >> "$UNRESOLVED_FILE"
    done
    
    echo ""
    echo "⚠️  Found ${#BROKEN_LINKS[@]} broken link(s). See $UNRESOLVED_FILE"
    exit 1
else
    # Clear unresolved file if no issues
    echo "# Unresolved URLs" > "$UNRESOLVED_FILE"
    echo "" >> "$UNRESOLVED_FILE"
    echo "✅ No broken links as of $DATE $TIME" >> "$UNRESOLVED_FILE"
    
    echo ""
    echo "✅ All links valid!"
    exit 0
fi
