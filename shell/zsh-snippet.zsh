alias ls='lsd --group-dirs=first'
alias ll='lsd -lah --group-dirs=first'
alias la='lsd -A --group-dirs=first'
alias lt='lsd --tree'

eval "$(starship init zsh)"

function set_win_title() {
  echo -ne "\033]0; $(basename "$PWD") \007"
}

precmd_functions+=(set_win_title)
