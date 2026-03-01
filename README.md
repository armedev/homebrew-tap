# armedev/tap

Homebrew tap for armedev's tools.

## Installation

```bash
brew tap armedev/tap
brew install smart-skills
```

## Available Formulas

- `smart-skills` - Agent skill management tool for AI assistants

## What is smart-skills?

A CLI tool to manage and sync AI agent skills (instructions) for tools like:
- opencode
- nvim  
- Cursor
- Claude Code

### Quick Start

```bash
# Create global skills directory
mkdir -p ~/.config/smart-skills/skills

# Add your skills
# Then initialize a project
cd your-project
smart-skills init
```

For more info: https://github.com/armedev/smart-skills
