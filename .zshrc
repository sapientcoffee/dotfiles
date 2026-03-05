# ~/.zshrc

################################################################################
# History
################################################################################
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt share_history # Share history between multiple instances of zsh

################################################################################
# Environment Variables & Path
################################################################################

# Source secrets if the file exists
if [[ -f ~/.secrets ]]; then
  . ~/.secrets
fi

# Editors
export VISUAL=nvim
export EDITOR=nvim

# Starship Prompt
export STARSHIP_CONFIG="$HOME/.config/starship.toml"

# NVM (Node Version Manager) - Lazy Load
export NVM_DIR="$HOME/.nvm"

# Unalias first to avoid conflicts if they are already aliased
unalias nvm node npm npx 2>/dev/null

function nvm {
  unset -f nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm "$@"
}
function node {
  unset -f node npm npx
  nvm use default
  node "$@"
}
function npm {
  unset -f node npm npx
  nvm use default
  npm "$@"
}
function npx {
  unset -f node npm npx
  nvm use default
  npx "$@"
}

# Consolidated PATH
# Using an array to avoid duplicates and for better readability
typeset -U path
path=(
  "$HOME/.local/bin"
  "$HOME/development/flutter/bin"
  "$HOME/go/bin"
  "/usr/lib/google-golang/bin"
  "/usr/local/sbin"
  "/usr/local/bin"
  "/usr/sbin"
  "/usr/bin"
  "/sbin"
  "/bin"
  "/snap/bin"
  $path
)
export PATH




################################################################################
# Completion
################################################################################
# Case-insensitive matching and menu selection
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
autoload -U compinit
compinit

################################################################################
# ZSH Plugins
################################################################################

# Fast Syntax Highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# Starship Init (must be at the end)
eval "$(starship init zsh)"

# use direnv for dir level environment variables
eval "$(direnv hook zsh)"

# zoxide for smarter navigation
eval "$(zoxide init zsh)"
################################################################################
# Aliases
################################################################################
# eza (modern replacement for ls)
alias ls='eza --icons'
alias la='eza -a --icons'
alias ll='eza -la --sort=modified'
alias llt='eza -lT --icons'
alias less='less -R'

# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -m'
alias gca='git commit -am'
alias gs='git status'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'

# Other useful aliases
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
# Alias vi and vim to nvim
alias vi='nvim'
alias vim='nvim'
alias gemini='/google/bin/releases/gemini-cli/tools/gemini --proxy=false'

# Gemini Integration
# Quickly ask Gemini about the last command's output
explain_last() {
  fc -ln -1 | gemini "Explain what this command does and its output: $(cat)"
}

# Review staged changes
alias greview='git diff | gemini "Review these changes for bugs or optimizations"'

################################################################################
# Auto-start Tmux
################################################################################
# Automatically start/attach to tmux session "main" on shell startup
if [[ -z "$TMUX" ]] && [[ -o interactive ]] && [[ -x "$HOME/.local/bin/tmux-start" ]]; then
  "$HOME/.local/bin/tmux-start"
fi

################################################################################
# Tmux Dynamic Background
################################################################################
function _tmux_bg_change {
  local bg_color="#2b0000"
  local default_bg="#1e1e2e" # Catppuccin Mocha Base

  if [[ -n "$TMUX" ]]; then
    if [[ "$PWD" == "$HOME" ]]; then
      tmux select-pane -P "bg=$bg_color"
    else
      # Explicitly set the background to the theme color to ensure opacity
      tmux select-pane -P "bg=$default_bg"
      # Also reset the host terminal background to prevent it from showing through
      # (OSC 111 reset)
      printf '\033Ptmux;\033\033]111\007\033\\'
    fi
  else
    if [[ "$PWD" == "$HOME" ]]; then
      printf '\033]11;%s\007' "$bg_color"
    else
      printf '\033]111\007'
    fi
  fi
}
precmd_functions+=(_tmux_bg_change)
