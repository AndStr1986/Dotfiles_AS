# editor
export EDITOR=nvim

# history
HISTSIZE=10000
SAVEHIST=10000

# aliases
alias ll="ls -la"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

# navigation
alias ..="cd .."
alias ...="cd ../.."

#nvim
alias v="nvim"
alias vim="nvim"

# Enable Starship
eval "$(starship init zsh)"

# Enable Zoxide
eval "$(zoxide init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# eza (modern ls)
alias ls="eza"
alias ll="eza -lah"
alias la="eza -a"
alias tree="eza --tree --level=2"

# bat (Better cat)
alias cat="bat"

# ripgrep
alias grep="rg"
