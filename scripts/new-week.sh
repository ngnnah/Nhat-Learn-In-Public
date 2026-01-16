#!/bin/bash

# Get current year and ISO week number
YEAR=$(date +%Y)
WEEK=$(date +%V)

# Remove leading zero for display, but keep it for folder name
WEEK_NUM=$(echo $WEEK | sed 's/^0*//')
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

# Update the template with actual week info
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' "s/Week XX, YYYY/Week $WEEK_PADDED, $YEAR/" "$DIR/README.md"
    sed -i '' "s/Month DD - Month DD/$MONDAY - $SUNDAY/" "$DIR/README.md"
else
    sed -i "s/Week XX, YYYY/Week $WEEK_PADDED, $YEAR/" "$DIR/README.md"
    sed -i "s/Month DD - Month DD/$MONDAY - $SUNDAY/" "$DIR/README.md"
fi

echo "✅ Created $DIR/README.md"
echo "📝 Week $WEEK_PADDED: $MONDAY - $SUNDAY"
echo ""
echo "Next steps:"
echo "  1. Edit $DIR/README.md with your learnings"
echo "  2. Update README.md table with new week entry"
