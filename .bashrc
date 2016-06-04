#
# $Id: dot.bashrc 2811 Oct 26 21:19:25 CST 2007 rofu $
#

shopt -s histappend
#stty erase ^H
OS=${OSTYPE/[^a-z]*/}
OSM=${OSTYPE/.[0-9]*/}

unset TMOUT
unset LANGUAGE
export CLICOLOR_FORCE
export LANG=en_US.UTF-8
#export LC_MESSAGES=en_US.UTF-8
export _ENG_LOCALE=en_US.UTF-8
export LC_TIME=C
export LESS="-giMnRSw"
export LS_COLORS='di=1;36:ln=0;35:so=0;32:pi=0;33:ex=0;31:bd=0;34;46:cd=0;34;43'
#export HISTTIMEFORMAT="%F %T "

#function color_prompt_defalut
#{
#	if [ "$TERM" != "dumb" ]; then
#		os=${OSTYPE/[^a-z]*/}
#		case "$os" in
#		"freebsd")
#			if [ -x /usr/local/bin/gnuls ] || [ -x /usr/bin/gnuls ] || \
#				[ -x /bin/gnuls ]; then
#					eval "`dircolors -b`"
#					alias ls='gnuls -F --color=auto --show-control-chars'
#			else
#				alias ls='ls -G -F'
#			fi
#			;;
#		"solaris")
#			if [ -x /usr/local/bin/gnuls ] || [ -x /usr/bin/gnuls ] || \
#				[ -x /bin/gnuls ]; then
#					eval "`dircolors -b`"
#					alias ls='gnuls -F --color=auto --show-control-chars'
#			else
#				alias ls='ls -G -F'
#			fi
#			;;
#		"linux")
#			eval "`dircolors -b`"
#			alias ls='ls -F --color=auto --show-control-chars'
#			;;
#		esac
#		#alias dir='ls --color=auto --format=vertical'
#		#alias vdir='ls --color=auto --format=long'
#	fi
#}
#color_prompt_defalut

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

alias colorls="/bin/ls -FGw"
alias ls="colorls"
alias ll="colorls -rtlh"

alias top="/usr/bin/top -s 1"
alias ssh="/usr/bin/ssh -2 -4 -C"
alias vi="/usr/bin/vim"
alias gogo="ssh eaudex@gxyuan.com"

#alias dict="env LC_CTYPE=${_ENG_LOCALE} /usr/local/bin/dict"
#alias finger="env LC_CTYPE=${_ENG_LOCALE} /usr/bin/finger"
#alias ftp="env LC_CTYPE=${_ENG_LOCALE} /usr/bin/ftp"
#alias grep="env LANG=${_ENG_LOCALE} /usr/bin/egrep --mmap"
#alias irssi="/usr/local/bin/irssi"
#alias ll='ls --color -F'
#alias less="/usr/bin/less"
#alias lftp="env LANG=${_ENG_LOCALE} lftp"
#alias lock="/usr/bin/lock -n -p"
#alias slidelpr="lpr -o sides=two-sided-short-edge -o number-up=4 -o number-up-layout=rltb"
#alias mall="env LC_CTYPE=${_ENG_LOCALE} /usr/bin/mail"
#alias n="/usr/bin/nslookup"
#alias p="/sbin/ping"
#alias psa="/bin/ps awx"
#alias psr="psa -U root"
#alias perldoc="LANG=C perldoc"
#alias r="/usr/bin/fetch -q -o /dev/stdout 'http://www.random.org/cgi-bin/randnum?num=1&min=0&max=1&col=1'"
#alias sort="env LANG=C /usr/bin/sort"
#alias startx="exec startx"
#alias tar="env LANG=${_ENG_LOCALE} /usr/bin/tar"
#alias telnet="/usr/bin/telnet -8"
#alias talk="env LC_CTYPE=${_ENG_LOCALE} /usr/local/bin/ytalk"
#alias vncviewer="vncviewer -encodings 'copyrect tight hextile zlib corre rre' -compresslevel 9 -quality 9"
#alias vnc="vncserver :4 -localhost"
#alias wall="env LC_CTYPE=${_ENG_LOCALE} /usr/bin/wall"
#alias write="env LC_CTYPE=${_ENG_LOCALE} /usr/bin/write"
#alias zg="/usr/bin/zgrep --mmap"

export JAVA_HOME=$(/usr/libexec/java_home)
export HADOOP_HOME=/usr/local/Cellar/hadoop/1.2.1/libexec/
export HIVE_HOME=/usr/local/Cellar/hive/0.12.0/libexec


if [ "${OS}" = "linux" -o "${OS}" = "cygwin" ]; then
	alias colorls="/bin/ls -F --show-control-chars --color=always"
	alias top="/usr/bin/top -d 1"
#	alias dict="/usr/bin/dict"
#	alias grep="/bin/egrep --mmap"
#	alias s="/usr/bin/screen"
#	alias tar="env LANG=${_ENG_LOCALE} /bin/tar"
fi

#if [ "${OS}" = "linux" ]; then
#	alias open="/usr/bin/gnome-open"
#fi

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
