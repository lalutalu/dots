# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/home/alu/.zshrc'

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[red]%}%n%{$fg[white]%}@%{$fg[red]%}%M %{$fg[red]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

_fix_cursor() {
   echo -ne '\e[6 q'
}

precmd_functions+=(_fix_cursor)

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey -v

alias e="emacs"
alias v="nvim"
alias ls="ls -a --color=auto"
# End of lines configured by zsh-newuser-install
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/alu/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


