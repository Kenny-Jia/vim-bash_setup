
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f /afs/hep.wisc.edu/cms/setup/bashrc ]; then
	. /afs/hep.wisc.edu/cms/setup/bashrc
fi

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

# export PROMPT_COMMAND="echo -n \[$(date +%H:%M:%S)\]\\ "

export ROOTSYS=/usr
export PATH=$PATH:$ROOTSYS/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ROOTSYS/lib

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv)"
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
export PS1="\n\[${COLOR_WHITE}\][\[${COLOR_LIGHT_PURPLE}\]\u@\h\[${COLOR_LIGHT_BLUE}\]\$(virtualenv_info)\[${COLOR_WHITE}\]][\[$(date +%H:%M:%S)\]]:\[${COLOR_GREEN}\]\w\n\[${COLOR_LIGHT_CYAN}\]\$ \[${COLOR_NC}\]"
export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.UTF-8
source /cvmfs/cms.cern.ch/cmsset_default.sh
export CMSSW_GIT_REFERENCE=/cvmfs/cms.cern.ch/cmssw.git.daily
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
