# Neovim Cheatsheet

This cheatsheet provides a quick reference for the keybindings and features of the installed Neovim plugins.

## Common Neovim Keybindings

| Keybinding | Description |
|---|---|
| `<leader>` | Space key |
| `:w` | Save the current file |
| `:q` | Quit the current buffer |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |

## Plugins

### Catppuccin

*   **Description**: A soothing pastel theme for Neovim.
*   **Configuration**: The theme is set to `catppuccin-mocha` by default.

### Neo-tree

*   **Description**: A file explorer tree.
*   **Keybindings**:

| Keybinding | Description |
|---|---|
| `<leader>e` | Toggle the file explorer |

### Autocompletion (nvim-cmp)

*   **Description**: A completion engine for Neovim.
*   **Keybindings**:

| Keybinding | Description |
|---|---|
| `<C-Space>` | Trigger completion |
| `<CR>` | Confirm completion |
| `<C-e>` | Abort completion |
| `<C-f>` | Scroll forward in documentation |
| `<C-b>` | Scroll backward in documentation |

### Treesitter

*   **Description**: Provides fast and accurate syntax highlighting.
*   **Configuration**: Automatically installs parsers for C, Lua, Vim, and Help.

### Telescope

*   **Description**: A fuzzy finder for Neovim.
*   **Keybindings**:

| Keybinding | Description |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help tags |

### Oil

*   **Description**: A file explorer that lets you edit your filesystem like a buffer.
*   **Keybindings**:

| Keybinding | Description |
|---|---|
| `<leader>fo` | Open oil file explorer |

### Formatter (none-ls)

*   **Description**: A formatter that uses null-ls to format code.
*   **Configuration**: Automatically formats code on save using `stylua` for Lua and `prettier` for other filetypes.

---

## tmux Keybindings

The prefix for all tmux commands is `Ctrl+a`.

| Keybinding | Description |
|---|---|
| `Ctrl+a` + `r` | Reload the tmux configuration file. |
| `Ctrl+a` + `|` | Split the current pane vertically. |
| `Ctrl+a` + `-` | Split the current pane horizontally. |
| `Ctrl+a` + `c` | Create a new window. |
| `Ctrl+a` + `s` | Toggle synchronize-panes (send input to all panes in a window). |
| `Ctrl+a` + `[` | Enter copy mode (for scrolling and selection). |
| `Ctrl+a` + `p` | Paste from the system clipboard into tmux. |
| `Ctrl` + `h/j/k/l` | Navigate between tmux panes and Neovim splits seamlessly. |
| `y` (in copy mode) | Yank the selection to the system clipboard. |
