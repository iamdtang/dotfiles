alias lamp="curl -L -o 'install.sh' http://bit.ly/1hBfq57 && curl -L -o 'Vagrantfile' http://bit.ly/1mE3Qt9 && vagrant up"
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]:"

# Find the gzipped size of a file in pretty format
# size dist/jquery.js
size() {
	gzip-size $1 | pretty-bytes
}
