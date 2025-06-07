# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages development environment configurations for macOS. It uses symbolic links to deploy configuration files from the repository to the home directory.

## Common Commands

### Deployment
```bash
# Deploy all dotfiles (creates symbolic links)
./deploy.sh
```

### Note Management
```bash
# Auto-commit changes in the notes repository
./auto_commit_note.sh
# Or use the alias
nc
```

### Navigation Shortcuts
- `Ctrl+G` - Navigate to any git repository using ghq + fzf
- `j` - Open Yazi file manager (changes directory on exit)
- `desk` - Navigate to ~/Desktop
- `repo` - Navigate to ~/Documents/git
- `md` - Navigate to ~/Documents/MyDocuments

## Architecture

### Core Components

1. **deploy.sh** - Main deployment script that creates symbolic links for:
   - `.zshrc`, `.tmux.conf`, `.vimrc`, `.gitconfig`
   - `.wezterm.lua`, `.p10k.zsh`
   - `.config/` directory (contains nvim, gh, yazi, and other app configs)
   - `auto_commit_note.sh`

2. **auto_commit_note.sh** - Automated script for committing changes in `~/documents/git/note`
   - Runs git pull, add, commit, and push
   - Shows macOS notifications for success/failure
   - Commit messages include hostname and timestamp

3. **Configuration Structure**:
   - Shell: Zsh with Zinit plugin manager and Powerlevel10k theme
   - Editor: Neovim with LazyVim configuration
   - Terminal: WezTerm with custom keybindings
   - Version Control: Git with ghq for repository management
   - Package Management: Homebrew (see Brewfile)

### Key Development Tools

- **Editor**: Neovim (LazyVim) with extensive language support and Copilot integration
- **Git UI**: Lazygit (alias: `lg`)
- **File Search**: ripgrep, fzf
- **Terminal Multiplexer**: tmux with custom prefix (Ctrl+K)
- **Shell History**: atuin
- **File Manager**: Yazi

### Important Aliases

- Git: `g` (git), `gc` (commit), `gp` (push), `ga` (add), `gs` (status)
- Editor: `v` (nvim), `v.` (nvim .)
- Development: `runc` (compile and run C programs)
- Package managers: `p` (pnpm), `n` (npm)

## Notes

- This repository is macOS-specific (uses osascript for notifications, Homebrew for packages)
- All configuration changes take effect immediately due to symbolic links
- The Neovim configuration uses LazyVim, not vim-plug as mentioned in the outdated README
- Git repositories are managed with ghq and stored in `~/Documents/git`