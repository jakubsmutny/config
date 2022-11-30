/usr/bin/test -O "$(/usr/bin/tty)" && mesg n

PS1="\e[0;37mfray1 \w> \e[00m"
PS2="\e[1;37mfray1 > \e[00m"

PATH="/usr/gnu/bin:$PATH"

alias grep="/usr/gnu/bin/grep --color"
alias fgrep="/usr/gnu/bin/grep -F --color"
alias egrep="/usr/gnu/bin/grep -E --color"
alias awk="/usr/gnu/bin/awk"
