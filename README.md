# My Dotfiles

![Managed by yadm](https://img.shields.io/badge/managed%20by-yadm-blue?style=for-the-badge&logo=git)
![Shell](https://img.shields.io/badge/Shell-Zsh-green?style=for-the-badge&logo=zsh)
![Editor](https://img.shields.io/badge/Editor-Neovim-green?style=for-the-badge&logo=neovim)

![Terminal Screenshot](https://via.placeholder.com/800x400.png?text=My+Awesome+Terminal)

> **Note:** Replace the screenshot above with a real capture of your terminal!

My personal configuration files, managed by [`yadm`](https://yadm.io/). Designed for a fast, keyboard-centric workflow on Linux.

## 📂 Repository Structure

```text
.
├── .config/
│   ├── gh/                 # GitHub CLI configuration
│   ├── nvim/               # Neovim configuration (Lua, Lazy.nvim)
│   ├── starship.toml       # Starship prompt configuration
│   └── Code/               # VS Code User settings
├── .ssh/
│   └── config              # SSH host aliases (keys are ignored)
├── .tmux.conf              # Tmux configuration (Catppuccin theme)
├── .zshenv                 # Environment variables
├── .zshrc                  # Interactive shell configuration
├── .secrets                # [IGNORED] Local secrets and tokens
└── README.md
```

## ✨ Features

### 🐚 Zsh Shell
*   **Prompt**: [Starship](https://starship.rs/) for a minimal, informative prompt.
*   **Plugins**: Fast Syntax Highlighting, Autosuggestions, `zoxide` for navigation.
*   **Secret Management**: Automatically sources `~/.secrets` if present (see below).

### 📝 Neovim
*   Fully Lua-based configuration.
*   Managed by **lazy.nvim**.
*   Pre-configured with **LSP**, **Treesitter**, **Telescope**, and **Oil**.

### 💻 Tmux
*   **Theme**: [Catppuccin](https://github.com/catppuccin/tmux) (Mocha variant).
*   **Copy-Paste**: Mouse selection automatically copies to system clipboard (via `xclip`).
*   **Navigation**: seamless navigation between Neovim and Tmux splits.
*   **Keybindings**:
    *   `Ctrl + a`: Prefix key (remapped from `Ctrl + b`).
    *   `|` and `-`: Split panes (vertical/horizontal).
    *   `r`: Reload config.

## 🚀 Installation

1.  **Install Prerequisites:**
    ```bash
    # Ubuntu/Debian example
    sudo apt install zsh tmux neovim ripgrep fd-find xclip git
    
    # Install yadm
    curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm
    ```

2.  **Clone & Bootstrap:**
    ```bash
    yadm clone https://github.com/sapientcoffee/dotfiles.git
    yadm status
    ```

## 🔐 Managing Secrets

**DO NOT** commit API keys or tokens to this repository. This setup ignores the `.secrets` file by default.

1.  Create the file: `touch ~/.secrets`
2.  Add your secrets:
    ```bash
    export ATLASSIAN_API_TOKEN="your_token_here"
    export GITHUB_TOKEN="your_token_here"
    ```
3.  Reload your shell. `.zshrc` will source this file automatically.

## 🔄 Updating

To get the latest changes:

1.  **Pull changes:**
    ```bash
    yadm pull
    ```

2.  **Apply updates (if needed):**
    *   **Zsh:** `source ~/.zshrc` (or restart terminal)
    *   **Neovim:** Run `:Lazy sync` inside Neovim
    *   **Tmux:** Press `Ctrl+a` then `r` to reload config; `Ctrl+a` then `U` to update plugins.

## 🔧 Management Cheatsheet

| Action | Command |
| :--- | :--- |
| **Add File** | `yadm add <file>` |
| **Commit** | `yadm commit -m "update"` |
| **Push** | `yadm push` |
| **Pull** | `yadm pull` |
| **Status** | `yadm status` |
