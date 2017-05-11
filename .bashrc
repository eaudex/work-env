#
# $Id: dot.bashrc 2811 Aug 26 16:21:25 CST 2016 rofu/eaudex $
#

shopt -s histappend
stty erase ^H

unset TMOUT
#export LESS="-giMnRSw"
#export LS_COLORS="di=1;36:ln=0;35:so=0;32:pi=0;33:ex=0;31:bd=0;34;46:cd=0;34;43"
#export HISTTIMEFORMAT="%F %T "

if [ "$TERM" == "screen" ]; then
    export PS1="\[\e[32m\][\u@\h \w]\n\[\e[33m\]\\$\[\e[m\]\[\ek\e\134\] "
else
    export PS1="\[\e[32m\][\u@\h \w]\\$\[\e[m\] "
fi

export PTATH=$HOME/bin:$PATH
export PYTHONSTARTUP=$HOME/.pythonrc
export VISUAL=vim
export EDITOR=vim

# CMD Aliases
alias rm="/bin/rm -i"
alias cp="/bin/cp -i"
alias mv="/bin/mv -i"

alias colorls="/bin/ls -F --show-control-chars --color=always"  #for LINUX
#alias colorls="/bin/ls -FGw"                                   #for MAC
alias ls="colorls"
alias ll="colorls -rtlh"

alias top="/usr/bin/top -d 1"   #for LINUX
#alias top="/usr/bin/top -s 1"  #for MAC

alias ssh="/usr/bin/ssh -2 -4 -C"
alias vi="/usr/bin/vim"



## ssh + screen title
#function sshs() {
#	local last=${!#}
## XXX alias does not work here
#	screen -t "$ |$last"":" /usr/bin/ssh -2 -4 -C "$@"
#}

## stuff that only needs when i login
#if [ -t 0 -a -x /usr/local/bin/keychain -a -r $HOME/.ssh/id_dsa.pub ]; then
#
## SSH Key
#if [ -f $HOME/.keychain/${HOSTNAME}-sh ]; then
#. $HOME/.keychain/${HOSTNAME}-sh
#fi
#
#if [ -f $HOME/.keychain/${HOSTNAME}-sh-gpg ]; then
#. $HOME/.keychain/${HOSTNAME}-sh-gpg
#export GPG_TTY=`tty`
#fi
#fi

# shells/bash-completion
#for i in /usr/local/etc /etc; do
#if [ -f ${i}/bash_completion ]; then
#. ${i}/bash_completion
#fi
#done

#if [ -f /usr/local/share/examples/pkgtools/bash/complete.sample ]; then
#. /usr/local/share/examples/pkgtools/bash/complete.sample
#fi
#
## local bashrc
#if [ -r $HOME/.bashrc.local ]; then
#. $HOME/.bashrc.local
#fi
#
## bashrc.machines
#if [ -r $HOME/.bashrc.machines ]; then
#. $HOME/.bashrc.machines
#fi
