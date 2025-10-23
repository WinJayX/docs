#!/bin/bash

# Quickdraw Achievement Helper
# 帮助获得Quickdraw徽章（5分钟内关闭Issue）

echo "⚡ Quickdraw Achievement Helper"
echo "============================="

# 创建多个Issue来增加成功率
ISSUES=(
    "Test Issue #1 for Quickdraw Achievement"
    "Test Issue #2 for Quickdraw Achievement" 
    "Test Issue #3 for Quickdraw Achievement"
)

ISSUE_BODY="This is a test issue created to earn the Quickdraw achievement badge. It will be closed within 5 minutes.

## Purpose
- Earn Quickdraw badge
- Test GitHub automation
- Improve repository activity

## Action Required
This issue will be closed immediately after creation to meet the Quickdraw requirements."

echo "📝 Creating test issues for Quickdraw badge..."
echo ""

# 检查GitHub CLI
if command -v gh &> /dev/null && gh auth status &> /dev/null; then
    echo "✅ Using GitHub CLI to create issues..."
    
    for i in "${!ISSUES[@]}"; do
        ISSUE_TITLE="${ISSUES[$i]}"
        echo "🚀 Creating: $ISSUE_TITLE"
        
        # 创建Issue
        ISSUE_URL=$(gh issue create --title "$ISSUE_TITLE" --body "$ISSUE_BODY" --repo WinJayX/docs)
        echo "✅ Created: $ISSUE_URL"
        
        # 等待2秒
        sleep 2
        
        # 关闭Issue
        echo "🔒 Closing issue..."
        gh issue close "$ISSUE_URL" --comment "Closing this issue to earn the Quickdraw achievement badge! ⚡"
        echo "✅ Closed! This should help earn the Quickdraw badge."
        
        echo ""
        sleep 1
    done
    
else
    echo "⚠️  GitHub CLI not available. Manual steps:"
    echo ""
    for i in "${!ISSUES[@]}"; do
        ISSUE_TITLE="${ISSUES[$i]}"
        echo "🔗 Manual steps for: $ISSUE_TITLE"
        echo "1. Go to: https://github.com/WinJayX/docs/issues/new"
        echo "2. Title: $ISSUE_TITLE"
        echo "3. Body: $ISSUE_BODY"
        echo "4. Click 'Submit new issue'"
        echo "5. Immediately click 'Close issue'"
        echo "6. This should earn you the Quickdraw badge!"
        echo ""
    done
fi

echo "🎉 Quickdraw achievement process completed!"
echo "Check your GitHub profile to see the new badge!"
echo ""
echo "💡 Tips for Quickdraw badge:"
echo "- Create issues and close them within 5 minutes"
echo "- Use automation tools for faster processing"
echo "- Multiple quick closures increase success rate"
