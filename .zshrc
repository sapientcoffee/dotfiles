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

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

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

# Other Exports
export OTLP_GOOGLE_CLOUD_PROJECT="coffee-and-codey"
export GOOGLE_CLOUD_PROJECT="code-assist-enterprise-demo"


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


################################################################################
# Aliases
################################################################################
# eza (modern replacement for ls)
alias ls='eza --icons'
alias la='eza -a --icons'
alias ll='eza -l --icons'
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