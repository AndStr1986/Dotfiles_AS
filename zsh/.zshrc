# editor
export EDITOR=nvim

export FZF_DEFAULT_OPTS="--highlight-line --info=inline-right --ansi --layout=reverse --border=none"

autoload -U compinit; compinit
source ~/Dotfiles_AS/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh


# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
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
