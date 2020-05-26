### Prompt

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
precmd () { vcs_info }

PROMPT='${vcs_info_msg_0_}''$ '
RPROMPT='%/'

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
alias gch='git checkout'

# compaudit | xargs chmod g-w
autoload -Uz compinit && compinit

