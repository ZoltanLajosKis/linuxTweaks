
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\u@\h:\w:$(parse_git_branch)\$ '
alias ls='ls --color=auto'
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown -h now'

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

