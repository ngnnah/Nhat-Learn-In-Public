#!/bin/bash

# Get current year
YEAR=$(date +%Y)

# Find the next sequential week number by looking at existing folders
LAST_WEEK=$(ls -d weeks/$YEAR/week-* 2>/dev/null | sed 's/.*week-//' | sort -n | tail -1)
if [ -z "$LAST_WEEK" ]; then
    WEEK_NUM=1
else
    # Remove leading zeros and increment
    WEEK_NUM=$((10#$LAST_WEEK + 1))
fi
WEEK_PADDED=$(printf "%02d" $WEEK_NUM)

# Calculate date range (Monday to Sunday of current week)
# macOS date command
if [[ "$OSTYPE" == "darwin"* ]]; then
    # Get Monday of current week
    DOW=$(date +%u)  # 1=Monday, 7=Sunday
    MONDAY=$(date -v-$((DOW-1))d +"%b %d")
    SUNDAY=$(date -v+$((7-DOW))d +"%b %d")
else
    # Linux date command
    MONDAY=$(date -d "monday this week" +"%b %d")
    SUNDAY=$(date -d "sunday this week" +"%b %d")
fi

DIR="weeks/$YEAR/week-$WEEK_PADDED"

# Check if directory already exists
if [ -d "$DIR" ]; then
    echo "Week $WEEK_PADDED already exists at $DIR"
    exit 1
fi

# Create directory and copy template
mkdir -p "$DIR"
cp weeks/TEMPLATE.md "$DIR/README.md"

# Calculate previous and next week numbers
PREV_WEEK=$(printf "%02d" $((WEEK_NUM - 1)))
NEXT_WEEK=$(printf "%02d" $((WEEK_NUM + 1)))

# Update the template with actual week info
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/Week XX, YYYY/Week $WEEK_PADDED, $YEAR/" "$DIR/README.md"
    sed -i '' "s/Month DD - Month DD/$MONDAY - $SUNDAY/" "$DIR/README.md"
    sed -i '' "s|Previous Week](../week-XX|Previous Week](../week-$PREV_WEEK|" "$DIR/README.md"
    sed -i '' "s|Next Week →](../week-XX|Next Week →](../week-$NEXT_WEEK|" "$DIR/README.md"
else
    sed -i "s/Week XX, YYYY/Week $WEEK_PADDED, $YEAR/" "$DIR/README.md"
    sed -i "s/Month DD - Month DD/$MONDAY - $SUNDAY/" "$DIR/README.md"
    sed -i "s|Previous Week](../week-XX|Previous Week](../week-$PREV_WEEK|" "$DIR/README.md"
    sed -i "s|Next Week →](../week-XX|Next Week →](../week-$NEXT_WEEK|" "$DIR/README.md"
fi

echo "✅ Created $DIR/README.md"
echo "📝 Week $WEEK_PADDED: $MONDAY - $SUNDAY"
echo ""
echo "Next steps:"
echo "  1. Edit $DIR/README.md with your learnings"
echo "  2. Update README.md table with new week entry"
