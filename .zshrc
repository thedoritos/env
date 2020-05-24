### Histoy

function peco-history() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history
bindkey '^R' peco-history

### Git

alias gs='git status'
alias gl='git log --graph'
alias gd='git diff'
alias gds='git diff --staged'
alias gb='git branch -a'

