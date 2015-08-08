alias stt="open -a 'Sublime Text 2' ."
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipobard'"
alias bp="open ~/.bash_profile -a 'Sublime Text 2'"

export PS1="\u@\h:\W $"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

export PATH="/usr/local/php5/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]:"

alias gs="git status"
alias ga="git add --all"
alias gc="git commit"
alias gp="git push"
