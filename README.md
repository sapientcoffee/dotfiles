# My Dotfiles

![Terminal Screenshot](https://via.placeholder.com/800x400.png?text=My+Awesome+Terminal)

This repository contains my personal configuration files (dotfiles) for various command-line tools and applications. The setup is managed by [`yadm`](https://yadm.io/), a powerful tool for managing dotfiles across multiple machines.

## ✨ Features

*   **Shell:** Zsh with the [Starship](https://starship.rs/) prompt for a minimal, fast, and feature-rich experience.
*   **Editor:** A modern Neovim setup managed by [lazy.nvim](https://github.com/folke/lazy.nvim).
*   **Terminal Multiplexer:** A highly customized tmux configuration for efficient session and window management.
*   **Git:** A streamlined Git configuration for a better workflow.
*   **Cross-Platform:** Designed to be easily portable across Linux systems.

## 🚀 Installation

These dotfiles are managed by `yadm`. To install them on a new machine:

1.  **Install `yadm`**. Follow the official installation instructions for your operating system: [yadm.io/docs/install](https://yadm.io/docs/install).

2.  **Clone this repository:**
    ```bash
    yadm clone https://github.com/sapientcoffee/dotfiles.git
    ```

3.  **Bootstrap (if necessary):** `yadm` will automatically check out the files to their correct locations in your home directory. You may need to run an additional bootstrap script if one is provided in the future to install dependencies.

    ```bash
    yadm bootstrap
    ```
    *(Note: A bootstrap script is not yet configured but can be added later.)*

## Prerequisites

For all features to work correctly, you'll need to have the following installed:

*   [Zsh](https://www.zsh.org/)
*   [Neovim](https://neovim.io/) (v0.9.0 or later recommended)
*   [tmux](https://github.com/tmux/tmux/wiki)
*   [Git](https://git-scm.com/)
*   [Starship](https://starship.rs/)
*   A [Nerd Font](https://www.nerdfonts.com/) (e.g., FiraCode Nerd Font, JetBrainsMono Nerd Font) for proper icon rendering in the terminal.

## 🔧 Management

*   **Adding a new file:** `yadm add <path/to/file>`
*   **Checking status:** `yadm status`
*   **Committing changes:** `yadm commit -m "Your commit message"`
*   **Pushing changes:** `yadm push`
*   **Pulling updates:** `yadm pull`

---
*This README was generated and managed by the Gemini CLI.*