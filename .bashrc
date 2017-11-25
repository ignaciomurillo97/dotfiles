#
# ~/.bashrc

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

## support con github
parse_git_branch(){
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

colGreen="\[\033[01;36m\]\[\033[01;1m\]"
colWhite="\[\033[01;93m\]"
noCol="\[\033[00m\]"
usuario="\u@\h"
directorio="\W"
branchGit="\$(parse_git_branch)"
promtEnding="$ "

#export PS1="$colGreen[$usuario$colWhite $directorio$colGreen]$noCol$branchGit$colGreen$promtEnding$noCol"
export PS1="$colGreen\$ $directorio>$noCol"
export TRMINAL='xfce4-terminal'
export EDITOR='/usr/bin/nvim'

## ASCII ART
cat ~/.bash_msg | lolcat

## aliases
alias ..="cd .."
alias ~="cd"
alias l.="ls -a"
alias us="setxkbmap us"
alias es="setxkbmap es"
alias :v="pacman"
alias tarzan="tar -cvfz"
alias vim="nvim"
alias i3conf="nvim ~/.config/i3/config"
cls() { cd "$@" && ls; }
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
