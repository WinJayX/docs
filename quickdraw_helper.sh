#!/bin/bash

# GitHub Quickdraw Achievement Helper
# 帮助快速获得Quickdraw徽章（5分钟内关闭Issue）

echo "🎯 GitHub Quickdraw Achievement Helper"
echo "====================================="

# 创建Issue的标题和内容
ISSUE_TITLE="Test Issue for Quickdraw Achievement"
ISSUE_BODY="This is a test issue created to earn the Quickdraw achievement badge. It will be closed within 5 minutes."

echo "📝 Issue Details:"
echo "Title: $ISSUE_TITLE"
echo "Body: $ISSUE_BODY"
echo ""

# 使用GitHub CLI创建Issue（如果安装了的话）
if command -v gh &> /dev/null; then
    echo "🚀 Creating issue using GitHub CLI..."
    ISSUE_URL=$(gh issue create --title "$ISSUE_TITLE" --body "$ISSUE_BODY" --repo WinJayX/docs)
    echo "✅ Issue created: $ISSUE_URL"
    
    echo "⏰ Waiting 10 seconds before closing..."
    sleep 10
    
    echo "🔒 Closing issue..."
    gh issue close "$ISSUE_URL" --comment "Closing this issue to earn the Quickdraw achievement badge!"
    echo "✅ Issue closed! You should now have the Quickdraw badge!"
else
    echo "⚠️  GitHub CLI not found. Please install it or create the issue manually:"
    echo ""
    echo "🔗 Manual steps:"
    echo "1. Go to: https://github.com/WinJayX/docs/issues/new"
    echo "2. Title: $ISSUE_TITLE"
    echo "3. Body: $ISSUE_BODY"
    echo "4. Click 'Submit new issue'"
    echo "5. Immediately click 'Close issue'"
    echo "6. This should earn you the Quickdraw badge!"
fi

echo ""
echo "🎉 Quickdraw achievement process completed!"
echo "Check your GitHub profile to see the new badge!"
