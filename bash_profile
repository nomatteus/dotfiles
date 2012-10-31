for a in `ls $HOME/.bash_profile.d/*.sh`; do 
  source $a
done

#export VISUAL=`first_of "mate -w" "nano -w" vi`
#export VISUAL=`first_of "subl -w" "mate -w" "nano -w" vi`
#export EDITOR=$VISUAL
#export GIT_EDITOR=`first_of "subl -w" "mate -wl1" "nano -w" vi`
export VISUAL='subl -w'
export EDITOR='subl -w'
export GIT_EDITOR='subl -w'

export PATH=~/bin:~/.gem/ruby/1.8/bin:~/.seeds/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
# http://www.thisisthegreenroom.com/2011/installing-python-numpy-scipy-matplotlib-and-ipython-on-lion/
export PATH=/usr/local/share/python:/usr/local/bin/python:$PATH

# This has been causing errors, so disabling. Will it screw up python stuff? 2012/10/31
#VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source /usr/local/bin/virtualenvwrapper.sh



ulimit -n 10240

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Get local IP (i.e. if it changes with DHCP)
alias mylocalip="ifconfig | grep 'inet ' | grep -v '127.0.0.1\| 192.\| 172.' | cut -d \  -f2"


function timer() {
	start=`date +'%s'`;
	$@;
	end=`date +'%s'`;
	echo \*\*\* Task took `expr $end - $start` seconds to run.;
}

