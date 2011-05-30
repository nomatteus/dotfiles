for a in `ls $HOME/.bash_profile.d/*.sh`; do 
  source $a
done

export VISUAL='mate -w'
export EDITOR=$VISUAL
export GIT_EDITOR='mate -wl1'

export PATH=~/bin:~/.gem/ruby/1.8/bin:~/.seeds/bin:$PATH

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Get local IP (i.e. if it changes with DHCP)
alias mylocalip="ifconfig | grep 'inet ' | grep -v '127.0.0.1\| 192.\| 172.' | cut -d \  -f2"
