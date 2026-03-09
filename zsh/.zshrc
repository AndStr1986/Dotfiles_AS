# editor
export EDITOR=nvim

export FZF_DEFAULT_OPTS="
  --highlight-line
  --info=inline-right
  --ansi
  --layout=reverse
  --border=rounded
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
  --color=selected-bg:#45475a
"

autoload -U compinit
compinit
source ~/Dotfiles_AS/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

# preview directory contents with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

zstyle ':fzf-tab:*' fzf-flags \
  --bind=tab:accept \
  --border=rounded \
  --layout=reverse \
  --info=inline-right \
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
  --color=selected-bg:#45475a

zstyle ':fzf-tab:*' switch-group '<' '>'

# history
HISTSIZE=10000
SAVEHIST=10000

# aliases
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

# navigation
alias ..="cd .."
alias ...="cd ../.."

# nvim
alias v="nvim"
alias vim="nvim"

# eza
alias ls="eza"
alias ll="eza -lah"
alias la="eza -a"
alias tree="eza --tree --level=2"

# bat
alias cat="bat"

# ripgrep
alias grep="rg"

# tmux
alias t="tmux"

# python
alias py="python3"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# fzf keybindings + completion
source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
