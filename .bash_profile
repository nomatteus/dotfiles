# Thanks to https://github.com/Emerson for some of this.
# http://noiseandheat.com/blog/2011/12/os-x-lion-terminal-colours/

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Colorize all the things!
#source  "`brew --prefix grc`/etc/grc.bashrc"

# Make the GITs nice
export PATH="$HOME/bin:$PATH"
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

export PS1='\[\033[01;30m\]\t `if [ $? = 0 ]; then echo "\[\033[01;32m\]✔"; else echo "\[\033[01;31m\]✘"; fi`\[\033[01;34m\] \W\[\033[35m\]$(__git_ps1 " (%s)") \[\033[00m\]'


# dotfiles bin folder
export PATH=/usr/local/bin:$HOME/dotfiles/bin:$PATH

# Postgres.app
export PATH=/Applications/Postgres93.app/Contents/MacOS/bin:$PATH

# RVM
source $HOME/.rvm/scripts/rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


########## Aliases

#  Shortcuts
alias twg='cd ~/Projects/twg/'
alias twgas='cd ~/Projects/twg/almost_scrum/'
alias twghp='cd ~/Projects/twg/homepage/'
alias fpf='cd ~/Projects/twg/fpf/'
alias omx='cd ~/Projects/twg/omx/'
alias rsp='cd ~/Projects/twg/rsportz/'
alias tsnt='cd ~/Projects/twg/tsn-timeline/'
alias tsnh='cd ~/Projects/twg/tsn-ios-hockey/'
alias cfc='cd ~/Projects/twg/cfc/'
alias tsxl='cd ~/Projects/twg/tsxpm-landing/'
alias tsx='cd ~/Projects/twg/tsxpm/'

alias me='cd ~/Projects/personal/'
alias dsf='cd ~/Projects/personal/dinesafe/'
alias dsfi='cd ~/Projects/personal/dinesafe-ios/'
alias dsfa='cd ~/Projects/personal/dinesafe-assets/'

# Apps
alias s='subl'

alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias iosd="sh /Users/mruten/.oh-my-zsh/custom/ios-sim-webdebug/ios-sim-webdebug.zsh"

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Git
alias gst="git status"
alias gl="git pull"
alias gp="git push"
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gba="git branch -a"
alias gb="git branch"
alias gbl="git branch -l"

# From http://brettterpstra.com/2013/03/31/a-few-more-of-my-favorite-shell-aliases/
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

alias rrg='rake routes | grep'

alias be='bundle exec'

# Bash History config
# ignorespace and ignoredups
export HISTCONTROL=ignoreboth

# Set up and down arrows to history search backward/forward (in .inputrc)
export INPUTRC=$HOME/.inputrc

# Allow more items in history
export HISTSIZE=99000000
export HISTTIMEFORMAT='%F %T '
# Remove history file size limit
unset HISTFILESIZE
HISTIGNORE='ls:bg:fg:history'

# Java Classpath (algs4 coursera)
export CLASSPATH=$CLASSPATH:~/algs4/junit-4.11.jar:hamcrest-core-1.3.jar

# teh phps
export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

# Autojump - https://github.com/joelthelion/autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


