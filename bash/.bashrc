#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### CHANGE TITLE OF TERMINALS
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${PWD/#$HOME/\~}\033\\"'
    ;;
esac

alias ls='ls -a --color=auto'
alias v='nvim'
PS1='[\u@\h \W]\$ '
