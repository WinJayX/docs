#!/bin/bash

# Galaxy Brain Achievement Helper
# 帮助获得Galaxy Brain徽章（讨论区回答问题）

echo "🧠 Galaxy Brain Achievement Helper"
echo "================================="

# 创建讨论指南
cat > "DISCUSSIONS_GUIDE.md" << EOF
# GitHub Discussions Guide

This guide helps you earn the Galaxy Brain achievement badge by participating in GitHub Discussions.

## Galaxy Brain Badge Requirements
- Answer at least 2 questions in Discussions
- Have your answers marked as "Answered" by the questioner

## How to Enable Discussions

### Method 1: Via GitHub Web Interface
1. Go to your repository: https://github.com/WinJayX/docs
2. Click on "Settings" tab
3. Scroll down to "Features" section
4. Check "Discussions" checkbox
5. Click "Set up discussions"

### Method 2: Via GitHub CLI (if available)
\`\`\`bash
gh api repos/WinJayX/docs --method PATCH -f has_discussions=true
\`\`\`

## Sample Questions to Answer

### Q1: How do I get GitHub Achievements?
**Answer**: GitHub Achievements are earned by completing specific activities on GitHub. Here are the main badges:
- **Starstruck**: Create a repository with 16+ stars
- **Pull Shark**: Merge pull requests
- **Quickdraw**: Close issues within 5 minutes
- **YOLO**: Merge PRs without review
- **Pair Extraordinaire**: Collaborate with others
- **Galaxy Brain**: Answer questions in discussions

### Q2: What's the best way to organize a GitHub repository?
**Answer**: Here are some best practices:
1. **Clear README**: Write a comprehensive README with installation and usage instructions
2. **Good structure**: Organize files logically (src/, docs/, tests/)
3. **Documentation**: Include API docs, contributing guidelines
4. **Issues/PRs**: Use proper labels and templates
5. **CI/CD**: Set up automated testing and deployment

### Q3: How can I improve my GitHub profile?
**Answer**: To make your GitHub profile stand out:
1. **Profile README**: Create a profile README with your skills and projects
2. **Pin repositories**: Pin your best 6 repositories
3. **Contribute regularly**: Make consistent contributions
4. **Write good commit messages**: Use clear, descriptive commit messages
5. **Participate in discussions**: Help others in discussions
6. **Earn achievements**: Work towards GitHub achievement badges

## Tips for Galaxy Brain Badge
- Be helpful and detailed in your answers
- Provide code examples when relevant
- Ask clarifying questions if needed
- Follow up on your answers
- Be patient - it may take time for answers to be marked as "Answered"

## Next Steps
1. Enable Discussions on your repository
2. Create some sample questions
3. Answer them with detailed responses
4. Wait for them to be marked as "Answered"
5. Check your GitHub profile for the Galaxy Brain badge!

---
*Created to help earn the Galaxy Brain achievement badge*
EOF

echo "✅ Created Discussions Guide"
echo ""
echo "🧠 Galaxy Brain Badge Strategy:"
echo "1. Enable Discussions on your repository"
echo "2. Create sample questions"
echo "3. Answer them with detailed responses"
echo "4. Have answers marked as 'Answered'"
echo ""
echo "🔗 Enable Discussions:"
echo "https://github.com/WinJayX/docs/settings"
echo ""
echo "📝 Sample questions created in DISCUSSIONS_GUIDE.md"
echo "Use these as templates for creating discussions!"
