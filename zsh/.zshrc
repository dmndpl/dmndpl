export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

# Language/runtime manager
eval "$(mise activate zsh)"

# Directory navigation
#eval "$(zoxide init zsh)"

autoload -Uz vcs_info add-zsh-hook
setopt PROMPT_SUBST

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true

zstyle ':vcs_info:git:*' stagedstr '%F{green}+%f'
zstyle ':vcs_info:git:*' unstagedstr '%F{red}*%f'

zstyle ':vcs_info:git:*' formats \
  ' %F{cyan} %b%f%c%u'

zstyle ':vcs_info:git:*' actionformats \
  ' %F{cyan} %b%f%c%u %F{yellow}(%a)%f'


add-zsh-hook precmd vcs_info

PROMPT='%F{green}%* %f%F{blue}%n%f %F{magenta}%~%f${vcs_info_msg_0_} %F{yellow}%#%f '

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS

alias vim="nvim"
alias ls="eza --icons=auto --group-directories-first"
alias ll="eza -lah --group-directories-first --icons=auto"
alias cat="bat"
