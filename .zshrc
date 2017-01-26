
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="junkfood"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git, ssh-agent)

source $ZSH/oh-my-zsh.sh

bindkey "\033[1~" beginning-of-line
bindkey "\033[4~" end-of-line

export LANG=en_US.UTF-8
export EDITOR='vim'


alias r='source ~/.zshrc'
alias z='vim ~/.zshrc'
alias net1='sudo nethogs eth0'
alias net2='sudo speedometer -r eth0 -t eth0'
alias checkip="sudo cat /var/log/syslog | grep 'iptables denied' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}.*DPT=[0-9]*' | sed -r 's/DST=.*SPT=[0-9]*//g' | sort | uniq -c | sort -n"
alias checkip-history="sudo cat /var/log/syslog | grep 'iptables denied' | grep -Eo '^.*[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}.*DPT=[0-9]*' | sed -r 's/vm-private.*MAC=(..:)*..//' | sed -r 's/DST.*SPT=[0-9]*//'"
alias checkdate='sudo ntpdate 0.fr.pool.ntp.org'

#export PATH=~/DEV/autoputty-python/bin:$PATH
#fpath=($fpath ~/DEV/autoputty-python/autocomplete)
#autoload -U compinit
#compinit

antigen bundle virtualenvwrapper
antigen bundle colorize

export PROJECT_HOME=~/DEV
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

