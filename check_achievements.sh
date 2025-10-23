#!/bin/bash

# GitHub Achievements Checker
# 检查您的GitHub成就徽章状态

echo "🏆 GitHub Achievements Checker"
echo "============================="

# 检查是否安装了GitHub CLI
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI found"
    
    # 检查是否已登录
    if gh auth status &> /dev/null; then
        echo "✅ GitHub CLI authenticated"
        
        # 获取用户信息
        USERNAME=$(gh api user --jq .login)
        echo "👤 Logged in as: $USERNAME"
        
        # 获取仓库列表
        echo ""
        echo "📁 Your repositories:"
        gh repo list --limit 10 --json name,stargazerCount,url | jq -r '.[] | "  - \(.name) (\(.stargazerCount) stars) - \(.url)"'
        
        # 检查Pull Requests
        echo ""
        echo "🦈 Pull Requests (for Pull Shark badge):"
        gh pr list --state merged --limit 5 --json title,url,mergedAt | jq -r '.[] | "  - \(.title) (merged: \(.mergedAt))"'
        
        # 检查Issues
        echo ""
        echo "⚡ Recent Issues (for Quickdraw badge):"
        gh issue list --state closed --limit 5 --json title,url,closedAt | jq -r '.[] | "  - \(.title) (closed: \(.closedAt))"'
        
    else
        echo "❌ GitHub CLI not authenticated"
        echo "Please run: gh auth login"
    fi
else
    echo "❌ GitHub CLI not found"
    echo "Please install GitHub CLI: https://cli.github.com/"
fi

echo ""
echo "🔗 Manual check methods:"
echo "1. Visit your GitHub profile: https://github.com/WinJayX"
echo "2. Look for the 'Achievements' section"
echo "3. Check if achievements are enabled in Settings > Profile > Achievements"

echo ""
echo "📊 Expected badges based on your repositories:"
echo "  - Starstruck: Need repositories with stars"
echo "  - Pull Shark: Need merged pull requests"
echo "  - Quickdraw: Need quickly closed issues"
echo "  - YOLO: Need PRs merged without review"
echo "  - Pair Extraordinaire: Need collaboration"
echo "  - Galaxy Brain: Need answered discussions"
