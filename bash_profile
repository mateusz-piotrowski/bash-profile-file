#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases.
#                My file version was originally copied from:
#                https://gist.github.com/natelandau/10654137
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Git Prompt
#   ------------------------------------------------------------
    GIT_PS1_SHOWCOLORHINTS=1
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="auto"

    source ~/.git-prompt.sh

#   My default command prompt
#   ------------------------------------------------------------
#   PROMPT_COMMAND='__git_ps1 "\h:\W" "\\\$ "'";$PROMPT_COMMAND"


#   Change Command Prompt
#   ------------------------------------------------------------


#   PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

#    export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '

#    export PS1="\[$(tput bold)$(tput setb 4)$(tput setaf 7)\]\u@\h:\w $ \[$(tput sgr0)\]"
#    export PS1="\[\033[34m\][\$(date +%H%M)][\u@\h:\w]$ "
#    export PS1="\[\033[1;34m\][\$(date +%H%M)][\u@\h:\w]$\[\033[0m\] "
#    export PS1='\[\e[0;31m\]\u\[\e[m\]\[\e[1;37m\]@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;32m\]'
#    export PS1='\[\e[0;31m\](SSH)\[\e[m\]\[\e[1;37m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]$(acpi -b | awk "{print \$4}" | cut -b1-3) $(__git_ps1 "(%s) ")\$\[\e[m\] \[\e[1;32m\]'

#    PS1_DEBIAN_CHROOT='${debian_chroot:+($debian_chroot)}'
#    PS1_TIME='\033[01;31m\]\t \033[01;32m\]'
#    PS1_USERNAME='\[\e[1;36m\]\u\e[1;37m\]@\e[1;32m\]\h\[\033[00m\]'
#    PS1_LOCATION='\[\033[01;34m\]\w\[\033[00m\]'
#    parse_git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
#    PS1_GIT=' \[\033[00;33m\]$(parse_git_branch)\[\033[00m\]\]'
#
#    PS1=$PS1_DEBIAN_CHROOT$PS1_TIME$PS1_USERNAME':'$PS1_LOCATION$PS1_GIT'\n\$ '
#    PS2='\[\033[01;36m\]>'

#    SH_WHITE="\[\033[1;37m\]"
#    SH_BLUE="\[\033[1;34m\]"
#    SH_RED="\[\033[1;31m\]"
#    SH_GREEN="\[\033[1;32m\]"
#    SH_YELLOW="\[\033[1;33m\]"
#
#    BL_ANGLE="\342\224\224"
#    TL_ANGLE="\342\224\214"
#    HORIZ_LINE="\342\224\200"
#
#    BATT="\$(acpi -b | awk '{print \$4}' | cut -b1-3)"
#    FILES_STAT="\$(ls -1 | wc -l | sed 's: ::g')"
#    FILES_SIZE="\$(ls -lah | grep -m 1 total | sed 's/1:total //')b"
#    GIT_PS1='$(__git_ps1 "(%s)")'
#
#    if [ $UID -eq 0 ]; then
#    PS1='\[\e[0;31m\]\u\[\e[m\]\[\e[1;37m\]@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;32m\]'
#    elif [ -n "$SSH_CLIENT" ]; then
#    PS1='\[\e[0;31m\](SSH)\[\e[m\]\[\e[1;37m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]$(acpi -b | awk "{print \$4}" | cut -b1-3) $(__git_ps1 "(%s) ")\$\[\e[m\] \[\e[1;32m\]'
#    else
#    PS1="\n"${SH_WHITE}${TL_ANGLE}"("${SH_BLUE}"\u"${SH_WHITE}"@"${SH_RED}"\h"${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}"\$?"${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}${BATT}${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}"\@ \d"${SH_WHITE}")\n"${BL_ANGLE}${HORIZ_LINE}"("${SH_GREEN}"\w"${SH_WHITE}")"${HORIZ_LINE}"("${SH_YELLOW}${FILES_STAT}" files, "${FILES_SIZE}${SH_WHITE}")"${HORIZ_LINE}${SH_BLUE}${GIT_PS1}${SH_WHITE}"> "${SH_GREEN}
#    fi
#    trap 'echo -ne "\e[0m"' DEBUG



#    ------------
#    SH_WHITE="\[\033[1;37m\]"
#    SH_BLUE="\[\033[1;34m\]"
#    SH_RED="\[\033[1;31m\]"
#    SH_GREEN="\[\033[1;32m\]"
#    SH_YELLOW="\[\033[1;33m\]"
#
#    BL_ANGLE="\342\224\224"
#    TL_ANGLE="\342\224\214"
#    HORIZ_LINE="\342\224\200"
#
#    BATT="\$(acpi -b | awk '{print \$4}' | cut -b1-3)"
#    FILES_STAT="\$(ls -1 | wc -l | sed 's: ::g')"
#    FILES_SIZE="\$(ls -lah | grep -m 1 total | sed 's/1:total //')b"
#    GIT_PS1='$(__git_ps1 "(%s)")'
#
#    if [ $UID -eq 0 ]; then
#    PS1='\[\e[0;31m\]\u\[\e[m\]\[\e[1;37m\]@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;32m\]'
#    elif [ -n "$SSH_CLIENT" ]; then
#    PS1='\[\e[0;31m\](SSH)\[\e[m\]\[\e[1;37m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]$(acpi -b | awk "{print \$4}" | cut -b1-3) $(__git_ps1 "(%s) ")\$\[\e[m\] \[\e[1;32m\]'
#    else
#    PS1="\n"${SH_WHITE}${TL_ANGLE}"("${SH_BLUE}"\u"${SH_WHITE}"@"${SH_RED}"\h"${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}"\$?"${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}${BATT}${SH_WHITE}")"${HORIZ_LINE}"("${SH_GREEN}"\@ \d"${SH_WHITE}")\n"${BL_ANGLE}${HORIZ_LINE}"("${SH_GREEN}"\w"${SH_WHITE}")"${HORIZ_LINE}"("${SH_YELLOW}${FILES_STAT}" files, "${FILES_SIZE}${SH_WHITE}")"${HORIZ_LINE}${SH_BLUE}${GIT_PS1}${SH_WHITE}"> "${SH_GREEN}
#    fi
#    trap 'echo -ne "\e[0m"' DEBUG
#    ------------

# PS1="\n\e[30;1mUSER ( \e[0m\e[33;1m\w\e[0m\e[30;1m )\e[0m\e[33;33m\n$ \e[0m"

# PS1='\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\$\[\e[0;31m\]'

# PS1="\n\[\033[35m\]\$(/bin/date)\n\[\033[32m\]\w\n\[\033[1;31m\]\u@\h: \[\033[1;34m\]\$') files \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\033[0m\] -> \[\033[0m\]"

# PS1="\n\[\e[1;30m\][$$:$PPID - \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY:-o} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n\$ "

# PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( `sed -n "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p"))"\033[38;5;22m/"$((`sed -n "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"' \
# PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '


# function aa_prompt_defaults ()
# {
#    local colors=`tput colors 2>/dev/null||echo -n 1` C=;
#
#    if [[ $colors -ge 256 ]]; then
#       C="`tput setaf 33 2>/dev/null`";
#       AA_P='mf=x mt=x n=0; while [[ $n < 1 ]];do read a mt a; read a mf a; (( n++ )); done</proc/meminfo; export AA_PP="\033[38;5;2m"$((mf/1024))/"\033[38;5;89m"$((mt/1024))MB; unset -v mf mt n a';
#    else
#       C="`tput setaf 4 2>/dev/null`";
#       AA_P='mf=x mt=x n=0; while [[ $n < 1 ]];do read a mt a; read a mf a; (( n++ )); done</proc/meminfo; export AA_PP="\033[92m"$((mf/1024))/"\033[32m"$((mt/1024))MB; unset -v mf mt n a';
#    fi;
#
#    eval $AA_P;
#
#    PROMPT_COMMAND='stty echo; history -a; echo -en "\e[34h\e[?25h"; (($SECONDS % 2==0 )) && eval $AA_P; echo -en "$AA_PP";';
#    SSH_TTY=${SSH_TTY:-`tty 2>/dev/null||readlink /proc/$$/fd/0 2>/dev/null`}
#
#    PS1="\[\e[m\n\e[1;30m\][\$\$:\$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][${C}\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY/\/dev\/} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\]\n\\$ ";
#
#    export PS1 AA_P PROMPT_COMMAND SSH_TTY
# }

#
# export AA_P="export PVE=\"\\033[m\\033[38;5;2m\"\$(( \`sed -n \"s/MemFree:[\\t ]\\+\\([0-9]\\+\\) kB/\\1/p\" /proc/meminfo\` / 1024 ))\"\\033[38;5;22m/\"\$((\`sed -n \"s/MemTotal:[\\t ]\\+\\([0-9]\\+\\) kB/\\1/p\" /proc/meminfo\`/ 1024 ))MB\"\\t\\033[m\\033[38;5;55m\$(< /proc/loadavg)\\033[m\";echo -en \"\"" \
# export PROMPT_COMMAND="history -a;((\$SECONDS % 10==0 ))&&eval \"\$AA_P\";echo -en \"\$PVE\";" \
# export PS1="\\[\\e[m\\n\\e[1;30m\\][\$\$:\$PPID \\j:\\!\\[\\e[1;30m\\]]\\[\\e[0;36m\\] \\T \\d \\[\\e[1;30m\\][\\[\\e[1;34m\\]\\u@\\H\\[\\e[1;30m\\]:\\[\\e[0;37m\\]\${SSH_TTY} \\[\\e[0;32m\\]+\${SHLVL}\\[\\e[1;30m\\]] \\[\\e[1;37m\\]\\w\\[\\e[0;37m\\] \\n(\$SHLVL:\\!)\\\$ " \
# export PVE="\\033[m\\033[38;5;2m813\\033[38;5;22m/1024MB\\t\\033[m\\033[38;5;55m0.25 0.22 0.18 1/66 26820\\033[m" && eval $AA_P

#
# export PROMPT_COMMAND='echo -en "\033[m\033[38;5;2m"$(( `sed -n "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p"))"\033[38;5;22m/"$((`sed -n "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"' \
#   export PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '

# export PROMPT_COMMAND='export H1="`history 1|sed -e "s/^[\ 0-9]*//; s/[\d0\d31\d34\d39\d96\d127]*//g; s/\(.\{1,50\}\).*$/\1/g"`";history -a;echo -e "sgr0\ncnorm\nrmso"|tput -S'
# export PS1='\n\e[1;30m[\j:\!\e[1;30m]\e[0;36m \T \d \e[1;30m[\e[1;34m\u@\H\e[1;30m:\e[0;37m`tty 2>/dev/null` \e[0;32m+${SHLVL}\e[1;30m] \e[1;37m\w\e[0;37m\[\033]0;[ ${H1}... ] \w - \u@\H +$SHLVL @`tty 2>/dev/null` - [ `uptime` ]\007\]\n\[\]\$'

# export PS1=`history 1 | sed -e 's/^[\ 0-9]*//; s/[\d0\d31\d34\d39\d96\d127]*//g; s/\(.\{1,50\}\).*$/\1/g'`

# export PS1='\n\e[1;30m[\j:\!\e[1;30m]\e[0;36m \T \d \e[1;30m[\e[1;34m\u@\H\e[1;30m:\e[0;37m`tty 2>/dev/null` \e[0;32m+${SHLVL}\e[1;30m] \e[1;37m\w\e[0;37m\[\033]0;[ ${H1}... ] \w - \u@\H +$SHLVL @`tty 2>/dev/null` - [ `uptime` ]\007\]\n\[\]\$ '

# export PS1="\n\e[1;37m[\e[0;32m\u\e[0;35m@\e[0;32m\h\e[1;37m]\e[1;37m[\e[0;31m\w\e[1;37m]\n$ \e[0m"

# export PS1="\n[$?]\e[1;37m[\e[0;32m\u\e[0;35m@\e[0;32m\h\e[1;37m]\e[1;37m[\e[0;31m\w\e[1;37m]($SHLVL:\!)\n\[\033[0m\]\$ "

# export PS1='\[\033[1;33m\]\u\[\033[1;37m\]@\[\033[1;32m\]\h\[\033[1;37m\]:\[\033[1;31m\]\w \[\033[1;36m\]\$ \[\033[0m\]'

# export PS1="$(tput setaf 1)#\u$(tput setaf 2)@$(tput setaf 3)\h:$(tput setaf 2)\w$(tput setaf 6)#$(tput setaf 5)~~$(tput setaf 6)\d$(tput setaf 5)~~$(tput setaf 6)\@$(tput setaf 5)~$(tput setaf 2)\t$(tput setaf 5)~HIST:\!~CMD:\#\$\n$(tput sgr0)"

# export PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

# export PS1="\n\[\e[30;1m\]\[\016\]\[\017\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\j\[\e[30;1m\])-(\[\e[34;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]\[\017\](\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])-> \[\e[0m\]"

# export PS1="\[\e[30;1m\]\[\016\]\[\017\](\[\e[31;1m\]\u@\h\[\e[30;1m\])-(\[\e[31;1m\]\j\[\e[30;1m\])-(\[\e[31;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]\[\017\](\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])-> \[\e[0m\]"

# export PS1='\[\e[1;32m\]\u@\H:\[\e[m\] \[\e[1;37m\]\w\[\e[m\]\n\[\e[1;33m\]hist:\! \[\e[0;33m\] \[\e[1;31m\]jobs:\j \$\[\e[m\] '

# export PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

# export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# export PS1="\n[\033[1;37m]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)[\033[1;37m])\342\224\200([\033[1;34m]#[\033[1;37m])\342\224\200([\033[1;33m]\@ \d[\033[1;37m])[\033[1;37m]\n\342\224\224\342\224\200([\033[1;32m]\w[\033[1;37m])\342\224\200([\033[1;32m]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b[\033[1;37m])\342\224\200> [\033[0m]"

# green='\e[0;32m'
# GREEN='\e[0;32m'
# red='\e[0;31m'
# RED='\e[1;31m'
# blue='\e[0;34m'
# BLUE='\e[1;34m'
# cyan='\e[0;36m'
# CYAN='\e[1;36m'
# NC='\e[0m'
#
# [ -z "$PS1" ] && return
# HISTCONTROL=ignoredups:ignorespace
# shopt -s histappend
# HISTSIZE=1000
# HISTFILESIZE=2000
# shopt -s checkwinsize
# complete -cf sudo
# PROMPT_COMMAND='history -a'
# shopt -s cdspell
# shopt -s dirspell
#
# export EDITOR=vim
# TERM=xterm                          # лечим баг с тмуксом (ломает хоткеи прог, считая что это скрины)
#
# #---{функция, запускающаяся при выходе из оболочки}---
# function _exit()
# {
#     echo -e "${CYAN}Bye, master :)${NC}"
# }
# trap _exit EXIT
# #-----------------------------------------------------
#
# clear
#
# # make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
# # set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi
#
# # set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac
#
# [ -n "$SSH_CLIENT" ] && ps1_informer=" ${BLUE}[ssh]${NC}"
# [ -n "$RANGER_LEVEL" ] && ps1_informer=" (in ranger)"
#
# if [ $(id -u) -eq 0 ];
# then
#   PS1="┌${RED}[\u]${NC} [\h]$ps1_informer:\[\e[0;32;49m\]\w\[\e[0m \n└>"
# else
#   PS1="┌[${GREEN}\u${NC}] [\h]$ps1_informer:\[\e[0;32;49m\]\w\[\e[0m \n└>"
# fi
#
# # Add an "alert" alias for long running commands.  Use like so:
# #   sleep 10; alert
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//     '\'')"'
#
# # Alias definitions.
# # You may want to put all your additions into a separate file like
# # ~/.bash_aliases, instead of adding them here directly.
# # See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# # enable programmable completion features (you don't need to enable
# # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# # sources /etc/bash.bashrc).
# if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#     . /etc/bash_completion
# fi
#
# # internal func alias list ---------------
# alias un="unarchive $1"
# alias re="renamer"
# alias c="ssh_choose"
# #-----------------------------------------
#
# alias r='ranger'
# alias p='ps ax | grep -v grep | grep -i'
# alias ub='source ~/.bashrc'
# alias ip='curl ifconfig.me'
#
# #-work-------
# alias m='sudo mount -t cifs -o guest //192.168.233.10/pub /home/lord/GEKTOR'
# alias x='/home/lord/work'
# alias z='/home/lord/cisco'
# #------------
#
# #-progs mod--
# alias tmux='tmux attach || tmux new'
# alias mtr='mtr -gtk'
# alias b-sync='/home/lord/.b-sync/master.sh'
# alias grep='grep --color=auto'
# alias fgrep='fgrep --color=auto'
# alias egrep='egrep --color=auto'
# alias ls='ls --color=auto'
# #------------
#
# alias lvim='vim -u /home/lord/.lvim/vimrc'
#
# PATH=$PATH:$HOME/.rvm/bin
# ---------------------------------------------------


# ------------------------
# # #~/.bashrc
#
# # This is my configuration for bash. I hope to keep it useful across
# # the computers I use, without depending on bash for my custom
# # functions if I need them from the outside.
#
# # ## Basics {{{
# # Include `$HOME/.bin` in `$PATH`.
# export PATH=$HOME/.bin:$PATH
#
# # Stop executing if this is not an interactive session.
# [ -z "$PS1" ] && return
#
# # }}}
#
# # ## Command entry {{{
# # Use [bash completion](http://freshmeat.net/projects/bashcompletion), also with sudo completion.
# if [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#     complete -cf sudo
# fi
#
# # Set prompt.
# # `root` has a red prompt, others a yellow one.
# # If we are connected remotely, `@<hostname>` shows first.
# build_ps1() {
#     local prompt_color='\[\e[33m\]'
#     local host=''
#     [[ $UID -eq 0 ]] && prompt_color='\[\e[1;31m\]'
#     [[ $SSH_TTY ]] && host="@$HOSTNAME "
#     echo "${prompt_color}${host}\w\[\e[0m\] \$ "
# }
# PS1=$(build_ps1)
# PS2='\\ '
# PS4='+ $LINENO: '
#
# # }}}
#
# # ## Shell options {{{
# # Correct minor spelling error when `cd`.
# shopt -s cdspell
#
# # Check and update window size after each command.
# shopt -s checkwinsize
#
# # Include files beginnig with . when using globs.
# shopt -s dotglob
#
# # Enable extended globbing:
# #
# # * `?(pattern-list)` matches zero or one occurance of patterns
# # * `*(pattern-list)` matches zero or more occurances of patterns
# # * `+(pattern-list)` matches one or more occurances of patterns
# # * `@(pattern-list)` matches one of the given patterns
# # * `!(pattern-list)` matches anything but the patterns
# #
# # (Don't get too excited here, `find` is your friend)
# shopt -s extglob
#
# # Enable `**/*` for recursive globbing.
# shopt -s globstar
#
# # ##Share history between sessions
# #
# # By appending to, and reading from, the history file after each command,
# # command history will be shared between bash instances.
# shopt -s histappend
# export PROMPT_COMMAND="history -a; history -n"
# export HISTSIZE=10000
#
# # }}}
#
# # ## Exports {{{
# # Java needs this to behave on e.g. [dwm](http://dwm.suckless.org).
# export AWT_TOOLKIT=MToolkit
#
# # [jumanji](http://pwmt.org/projects/jumanji) is the default browser.
# export BROWSER="jumanji"
#
# # [vim](http://www.vim.org) is the default editor.
# export EDITOR="vim"
#
# # Run OpenOffice in GTK2 mode.
# export OOO_FORCE_DESKTOP=gnome
#
# # Speed up firefox.
# export MOZ_DISABLE_PANGO=1
#
# # }}}
#
# # ## Aliases {{{
# # Colorize `ls`.
# alias ls='ls --color=always'
#
# # Show colors in less
# alias less='less -R'
#
# # Colorize `grep`.
# export GREP_COLORS="1;33"
# alias grep='grep --color=auto'
#
# # Convenient `cd..`.
# alias c="cd .."
#
# # Convenient `xdg-open`.
# alias o="xdg-open"
#
# # Never `rm` `/`.
# alias rm="rm --preserve-root"
#
# # Display Monday as first day of week in `cal`.
# alias cal="cal -m"
#
# # Remake a `PKGBUILD` in the current directory.
# alias repkg="makepkg -efi"
#
# # Defaults for bc
# alias bc="bc -l"
#
# # Open multiple files as tabs.
# alias vim="vim -p"
#
# #}}}
#
# # ## Functions {{{
# # [Packer](http://wiki.archlinux.org/index.php/AUR_Helper#packer) / pacman wrapper.
# # First tries `packer`, which tells us if it won't handle the command.
# # If `packer` fails, let `pacman` do the job.
# function p {
#     packer --noconfirm --noedit $*
#     [[ $? -eq 5 ]] && pacman $*
# }
#
# # Make directories, cd into the first one
# function md {
#     mkdir -p "$@" && cd "$1"
#
# }
#
# # calculate expression
# function calc {
#     echo "$@" | bc -l
# }
#
#
# # Search man pages for user commands
# function k {
#     man -k "$@" | grep '(1' --color=never
# }
#
# # ### cd improvements {{{
# # Use pushd to preserve history. `cdm` displays a menu of previous dirs,
# # Adapted from Pro Bash Programming - ISBN 978-1430219989
#
# # cd with history - i.e. pushd
# function cd {
#     local dir error
#
#     while :; do # No support for options, consume them
#         case $1 in
#             --) break ;;
#             -*) shift ;;
#             *) break ;;
#         esac
#     done
#
#     dir=${1:-$HOME}
#
#     pushd "$dir" 2>/dev/null
#     error=$?
#
#     [[ $error != 0 ]] && builtin cd "$dir"
#     return "$error"
# } >/dev/null
#
# # cd by menu, with previous directories as options
# function cdm {
#     local dir IFS=$'\n' item n
#
#     for dir in $(dirs -p); do
#         [[ "$dir" = "${PWD//$HOME/~}" ]] && continue
#         [[ ${item[*]} = *"$dir "* ]] && continue
#
#         item+=( "$dir " )
#         [[ ++n -ge 10 ]] && break
#     done
#
#     [[ -z "${item[@]}" ]] && return
#     echo
#     select i in "${item[@]}"; do
#         if [[ "$i" ]]; then
#             cd "${i//\~/$HOME}"
#             return $?
#         fi
#     done
# }
#
# # }}}
# # }}}
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# export PS1="\n[\033[1;37m]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '$bold${red}\u'; else echo '$bold${green}\u'; fi)[\033[1;37m])\342\224\200([\033[1;34m]#[\033[1;37m])\342\224\200([\033[1;33m]\@ \d[\033[1;37m])[\033[1;37m]\n\342\224\224\342\224\200([\033[1;32m]\w[\033[1;37m])\342\224\200([\033[1;32m]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b[\033[1;37m])\342\224\200> [\033[0m]"
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
#  export PS1='\[\e[0;36m\]┌─\[\e[1;37m\][\u@\h]\[\e[0m\]\[\e[0;36m\]─\[\e[0;93m\](\w)\n\[\e[0;36m\]└─\[\e[1;32m\][\A]\[\e[0m\]\$ '

# ----------------------------------------------------------------------------
  # export PS1='\u@\h:\w\$ '

# ----------------------------------------------------------------------------

# __git_ps1 ()
# {
#         local b="$(git symbolic-ref HEAD 2>/dev/null)";
#         if [ -n "$b" ]; then
#                 printf " (%s)" "${b##refs/heads/}";
#         fi
# }
# export PS1='\
# \[\e[01;30m\]\t \
# `[ "$(screen -ls | grep -c Detach)" != "0" ]\
# && echo "\[\e[00;34m\]$(screen -ls | grep -c Detach ) "`\
# `[ "$(jobs -r | wc -l)" != "0" ]\
# && echo "\[\e[00;33m\]$(jobs -r | wc -l ) "`\
# `[ "$(jobs -s | wc -l)" != "0" ]\
# && echo "\[\e[00;31m\]$(jobs -s | wc -l ) "`\
# \[\e[01;37m\][\
# `[ $UID == 0 -a $USER != $(logname) ]\
# && echo "\[\e[00;31m\]"`\
# `[ $UID == 0 -a $USER != $(logname) -a -z "$SUDO_USER" ]\
# && echo "\[\e[01;31m\]"`\
# `[ $UID == 0 -a $USER == $(logname) ]\
# && echo "\[\e[01;33m\]"`\
# `[ $UID != 0 -a $USER == $(logname) ]\
# && echo "\[\e[00;32m\]"`\
# `[ $UID != 0 -a $USER != $(logname) ]\
# && echo "\[\e[00;33m\]"`\
# \u\
# \[\e[00;36m\]@\
# `[ "$SSH_CLIENT" != "" -o "$SSH2_CLIENT" != "" ]\
# && echo "\[\e[00;33m\]"\
# || echo "\[\e[00;32m\]"`\
# \h \
# `[ -w "${PWD}" ]\
# && echo "\[\e[01;34m\]\W"\
# || echo "\[\e[01;31m\]\W"`\
# \[\e[01;37m\]]\
# `[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]]\
# && echo "\[\e[01;31m\]"\
# || echo "\[\e[01;32m\]"`$(__git_ps1 "(%s)")\[\e[00m\]\$ '
                        #time in black  #[,bold white #  user, red   # @, cyan     # host, green   # dir,bold blue# ],bold white#   Check if something needs to be commited in git repo                                    # if so, bold red            #if not, bold green  #current git branch#prompt, normal
# original from https://makandracards.com/makandra/1090-customize-your-bash-prompt
#export PS1='\[\e[01;30m\]\t `if [ $? = 0 ]; then echo "\[\e[32m\]✔"; else echo "\[\e[31m\]✘"; fi` \[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "\[\e[31m\]" || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '

# ----------------------------------------------------------------------------
# export PS1='$(if [[ $? == 0 ]]; then echo -e "\e[32m:)\e[m"; else echo -e "\e[31m:(\e[m"; fi)'
# ----------------------------------------------------------------------------


# ----------------------------------------------------------------------------
# export PS1='[\W][$(if [[ $? == 0 ]]; then echo -e "\e[32m:)\e[m"; else echo -e "\e[31m:(\e[m"; fi)]$ '

# ----------------------------------------------------------------------------
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac
#
# force_color_prompt=yes
#
# if [ -n "$force_color_prompt" ]; then
#     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#   color_prompt=yes
#     else
#   color_prompt=
#     fi
# fi
#
# C_WHITE='\[\e[1;37m\]'
# C_LIGHTGRAY='\[\e[0;37m\]'
# C_GRAY='\[\e[1;30m\]'
# C_BLACK='\[\e[0;30m\]'
# C_RED='\[\e[0;31m\]'
# C_LIGHTRED='\[\e[1;31m\]'
# C_GREEN='\[\e[0;32m\]'
# C_LIGHTGREEN='\[\e[1;32m\]'
# C_BROWN='\[\e[0;33m\]'
# C_YELLOW='\[\e[1;33m\]'
# C_BLUE='\[\e[0;34m\]'
# C_LIGHTBLUE='\[\e[1;34m\]'
# C_PURPLE='\[\e[0;35m\]'
# C_PINK='\[\e[1;35m\]'
# C_CYAN='\[\e[0;36m\]'
# C_LIGHTCYAN='\[\e[1;36m\]'
# C_DEFAULT='\[\e[0m\]'
#
# function setsymbols() {
#   local exit_status=$?
#   local color_exit=
#   local color_exit2=
#   local color_exit3=
#   local usym=
#   local end_sym=\$
#   local usegit=$1
#   local id=`/usr/bin/id -u`
#   #[ -n "$ID" -a "$ID" -le 200 ] && return
#   [[ $id == 0 ]] && end_sym=\#
#   if [ $exit_status = 0 ]; then
#     if [[ $id == 0 ]]; then
#       color_exit="$C_LIGHTBLUE"; color_exit2="$C_BLUE"; color_exit3="$C_WHITE";
#     else
#       color_exit="$C_LIGHTGREEN"; color_exit2="$C_GREEN"; color_exit3="$C_LIGHTBLUE";
#     fi
#     usym=":"
#   else
#     if [[ $id == 0 ]]; then
#       color_exit="$C_LIGHTRED"; color_exit2="$C_RED"; color_exit3="$C_BROWN";
#     else
#       color_exit="$C_LIGHTRED"; color_exit2="$C_RED"; color_exit3="$C_LIGHTCYAN";
#     fi
#     usym="!"
#   fi
#   [ -n "$usegit" ] && [ $(git status --porcelain 2>/dev/null | wc -l | tr -d " ") != 0 ] && color_git="$C_BROWN" || color_git=
#   [ $(jobs | wc -l | tr -d " ") != 0 ] && color_job="$C_BROWN" || color_job=
#   PS1="${debian_chroot:+($debian_chroot)}${color_exit}\u${color_exit2}\
# @\
# ${color_exit}$HOSTNAME${color_exit2}${color_git}\
# ${usym}\
# ${color_exit3}\w${color_exit2}${color_job}\
# ${end_sym}\
# ${C_DEFAULT} "
# }
#
# if [ "$color_prompt" = yes ]; then
#     PROMPT_COMMAND=setsymbols
# else
#     PS1='\u@${HOSTNAME}:\w\$ '
# fi
# unset color_prompt force_color_prompt

# ----------------------------------------------------------------------------

# if [ -f /etc/bash_completion ]; then
#     source /etc/bash_completion
# fi
#
# __has_parent_dir () {
#     # Utility function so we can test for things like .git/.hg without firing
#     # up a separate process
#     test -d "$1" && return 0;
#
#     current="."
#     while [ ! "$current" -ef "$current/.." ]; do
#         if [ -d "$current/$1" ]; then
#             return 0;
#         fi
#         current="$current/..";
#     done
#
#     return 1;
# }
#
# __vcs_name() {
#     if [ -d .svn ]; then
#         echo "-[svn]";
#     elif __has_parent_dir ".git"; then
#         echo "-[$(__git_ps1 'git %s')]";
#     elif __has_parent_dir ".hg"; then
#         echo "-[hg $(hg branch)]"
#     fi
# }
#
# black=$(tput -Txterm setaf 0)
# red=$(tput -Txterm setaf 1)
# green=$(tput -Txterm setaf 2)
# yellow=$(tput -Txterm setaf 3)
# dk_blue=$(tput -Txterm setaf 4)
# pink=$(tput -Txterm setaf 5)
# lt_blue=$(tput -Txterm setaf 6)
#
# bold=$(tput -Txterm bold)
# reset=$(tput -Txterm sgr0)
#
# export PS1='\n\[$bold\]\[$black\][\[$dk_blue\]\@\[$black\]]-[\[$green\]\u\[$yellow\]@\[$green\]\h\[$black\]]-[\[$pink\]\w\[$black\]]\[\033[0;33m\]$(__vcs_name) \[\033[00m\]\[$reset\]\n\[$reset\]\$ '
#
# # export PS1='\[\033[01;32m\]\n\u@\h\[\033[00m\] -> \[\033[01;34m\]\w\[\033[0;33m\]$(__vcs_name) \[\033[00m\]\n\$ '
#
# alias ls='ls -F --color=always'
# alias dir='dir -F --color=always'
# alias ll='ls -l'
# alias cp='cp -iv'
# alias rm='rm -i'
# alias mv='mv -iv'
# alias grep='grep --color=auto -i'
# alias v='vim'
#
# alias ..='cd ..'
#
# alias chmod_files='find -maxdepth 10 -type f -exec chmod 644 {} \;'
# alias chmod_folders='find -maxdepth 10 -type d -exec chmod 755 {} \;'
#
# alias apache_error='sudo tail -f  /var/log/apache2/error.log'
#
# del_recursive() {
#     find . | grep '$1' | xargs rm
# }
#
# process() {
#     ps -ef | grep $1
# }
#
# apache() {
#     sudo service apache2 $1
# }
#
# function extract()    # Handy Extract Program.
# {
#      if [ -f $1 ] ; then
#          case $1 in
#              *.tar.bz2)   tar xvjf $1     ;;
#              *.tar.gz)    tar xvzf $1     ;;
#              *.bz2)       bunzip2 $1      ;;
#              *.rar)       unrar x $1      ;;
#              *.gz)        gunzip $1       ;;
#              *.tar)       tar xvf $1      ;;
#              *.tbz2)      tar xvjf $1     ;;
#              *.tgz)       tar xvzf $1     ;;
#              *.zip)       unzip $1        ;;
#              *.Z)         uncompress $1   ;;
#              *.7z)        7z x $1         ;;
#              *)           echo "'$1' cannot be extracted via >extract<" ;;
#          esac
#      else
#          echo "'$1' is not a valid file"
#      fi
# }
# ----------------------------------------------------------------------------

# user
# export PS1='\[\e[1;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[0;36m\]\u\[\e[0m\]@\h \[\e[1;34m\]\w \$\[\e[0m\] '

# root
# export PS1='\[\e[1;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[0;35m\]\u\[\e[0m\]@\h \[\e[1;34m\]\w \$\[\e[0m\] '

# Unicode cheracters ✔ 'HEAVY CHECK MARK' (U+2714) and ✘ 'HEAVY BALLOT X' (U+2718)
# ----------------------------------------------------------------------------


# ----------------------------------------------------------------------------
# color_red='\[\e[31m\]'
# color_blue='\[\e[34m\]'
# color_reset='\[\e[0m\]'
#
# export PS1=${color_red}'\u'${color_reset}'@'${color_blue}'\h'${color_reset}
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# ps1_prompt() {
#     local ps1_exit=$?
#
#     if [ $ps1_exit -eq 0 ]; then
#         #ps1_status=`echo -e "\[\033[32m\]"'\$'"\[\033[0m\]"`
#         ps1_status='\$'
#     else
#         ps1_status=`echo -e "\[\033[1;31m\]"'\$'"\[\033[0m\]"`
#
#     fi
#
#     ps1_git=''
#     if [ "$(__git_ps1 %s)" != '' -a "$(__git_ps1 %s)" != 'master' ]; then
#         ps1_git=" (\[\033[32m\]"$(__git_ps1 "%s")"\[\033[0m\])"
#     fi
#
#     PS1="${debian_chroot:+($debian_chroot)}\u@\h:\[\033[01;34m\]\w\[\033[00m\]${ps1_git}${ps1_status} "
# }
# PROMPT_COMMAND="ps1_prompt;$PROMPT_COMMAND"

# ----------------------------------------------------------------------------
# Show current git branch in prompt, unless it's "master"
#
# Based on https://ttboj.wordpress.com/2013/10/10/show-current-git-branch-in-ps1-when-branch-is-not-master/
# if test "$(type -t __git_ps1)" = "function" ; then
#     test -z "$PS1_NO_GIT" && export PS1_NO_GIT="$PS1" || export PS1="$PS1_NO_GIT"
#     branch_on_demand='echo -e " \e[32m"$(__git_ps1 "%s")"\e[0m"'
#     branch_on_demand='$([ "$(__git_ps1 %s)" != "" -a "$(__git_ps1 %s)" != "master" ] && '"$branch_on_demand"' || :)'
#     PS1="${PS1%%\\\$ }$branch_on_demand\$ "
#     unset branch_on_demand
# fi
#
# export GITHUB_USER=jhermann
#
# github_clone_fork() {
#     local upstream="${1:?You need to provide an upstream repo name (user/name) as the 1st arg}"
#     local user="${upstream%/*}"
#     local repo="${upstream#*/}"
#
#     git clone "git@github.com-jh:jhermann/$repo.git"
#     cd "$repo"
#     git remote add upstream "https://github.com/$upstream.git"
#     git-config-jhermann
#     git remote update # test repos
# }
# ----------------------------------------------------------------------------

  # hyacinthe prompt theme with git support
# Derivated from <http://sebastiancelis.com/2009/11/16/zsh-prompt-git-users/>
#
# prompt_hyacinthe_help () {
#   cat <<'EOF'
#
#   This prompt is color-scheme-able.  You can invoke it thus:
#
#   prompt hyacinthe [<color1> [<color2> [<color3> [<color4> [<color5>]]]]]
#
#   The defaults colors are red, cyan, green, white, and yellow, respectively.
#
# EOF
# }
#
# prompt_hyacinthe_setup () {
#
#   local p_date p_userpwd p_end p_win
#   local -A pc
#
#   setopt prompt_subst
#
#   pcc[1]=${1:-${${SSH_CLIENT+'yellow'}:-'red'}}
#   pcc[2]=${2:-'cyan'}
#
#   if [[ "$USERNAME" == "root" ]] ; then
#     pcc[3]=${3:-'red'}
#   else
#     pcc[3]=${3:-'green'}
#   fi
#
#   pcc[4]=${4:-'white'}
#   pcc[5]=${5:-'yellow'}
#
#   pc['\[']="%F{$pcc[1]}["
#   pc['\]']="%F{$pcc[1]}]"
#   pc['<']="%F{$pcc[1]}<"
#   pc['>']="%F{$pcc[1]}>"
#   pc['\(']="%F{$pcc[1]}("
#   pc['\)']="%F{$pcc[1]})"
#
#   p_date="$pc['\[']%F{$pcc[2]}%D{%R}$pc['\]']"
#
#   [[ -n "$WINDOW" ]] && p_win="$pc['\(']%F{$pcc[4]}$WINDOW$pc['\)']"
#
#   p_userpwd="$pc['<']%F{$pcc[3]}%n@%m$p_win%F{$pcc[5]}:%F{$pcc[4]}%~$pc['>']"
#
#   p_end="%f%B%#%b "
#
#   zle_highlight[(r)default:*]=default:$pcc[2]
#   prompt="$p_date $p_userpwd $p_end"
#   PS2='%(4_.\.)%3_> %E'
#
#   add-zsh-hook precmd  update_git_vars
#   add-zsh-hook preexec preexec_update_git_vars
#   add-zsh-hook chpwd   update_git_vars
# }
#
# update_current_git_vars()
# {
#   unset __CURRENT_GIT_BRANCH
#   unset __CURRENT_GIT_BRANCH_STATUS
#   unset __CURRENT_GIT_BRANCH_IS_DIRTY
#
#   local st="$(git status 2>/dev/null)"
#   if [[ -n "$st" ]]; then
#           local -a arr
#           arr=(${(f)st})
#
#           if [[ $arr[1] =~ 'Not currently on any branch.' ]]; then
#                   __CURRENT_GIT_BRANCH='no-branch'
#           else
#                   __CURRENT_GIT_BRANCH="${arr[1][(w)4]}";
#           fi
#
#           if [[ $arr[2] =~ 'Your branch is' ]]; then
#                   if [[ $arr[2] =~ 'ahead' ]]; then
#                           __CURRENT_GIT_BRANCH_STATUS='ahead'
#                   elif [[ $arr[2] =~ 'diverged' ]]; then
#                           __CURRENT_GIT_BRANCH_STATUS='diverged'
#                   elif [[ $arr[2] =~ 'up-to-date' ]]; then
#                           __CURRENT_GIT_BRANCH_STATUS=''
#                   else
#                           __CURRENT_GIT_BRANCH_STATUS='behind'
#                   fi
#           fi
#
#           if [[ ! $st =~ 'nothing to commit' ]]; then
#                   __CURRENT_GIT_BRANCH_IS_DIRTY='1'
#           fi
#   fi
# }
#
# prompt_git_info()
# {
#   if [ -n "$__CURRENT_GIT_BRANCH" ]; then
#           local s="("
#           case "$__CURRENT_GIT_BRANCH_STATUS" in
#                   ahead)
#                   s+="↑"
#                   ;;
#                   diverged)
#                   s+="↕"
#                   ;;
#                   behind)
#                   s+="↓"
#                   ;;
#           esac
#           if [ -n "$__CURRENT_GIT_BRANCH_IS_DIRTY" ]; then
#                   s+="⚡"
#           fi
#           s+="$__CURRENT_GIT_BRANCH"
#           s+=")"
#
#           printf " %s%s" "%{${fg[yellow]}%}" $s
#   fi
# }
#
# preexec_update_git_vars()
# {
#   case "$1" in
#     git*)
#        __EXECUTED_GIT_COMMAND=1
#        ;;
#   esac
# }
#
# update_git_vars() {
#   update_current_git_vars
#
#   if [ "$__CURRENT_GIT_BRANCH" != "no-branch" ] ; then
#     RPROMPT="%F{$pcc[3]}$(prompt_git_info)"
#   fi
# }
#
# prompt_hyacinthe_setup "$@"
#

# ----------------------------------------------------------------------------
# #!/bin/bash
#
# RED="\[\033[0;31m\]"
# YELLOW="\[\033[0;33m\]"
# BLUE="\[\033[0;34m\]"
#
# BOLD_GREEN="\[\033[1;32m\]"
# BOLD_BLUE="\[\033[1;34m\]"
#
# NORMAL="\[\033[0m\]"
#
# export GIT_PS1_SHOWDIRTYSTATE=true
# export GIT_PS1_SHOWUNTRACKEDFILES=true
# export GIT_PS1_STATESEPARATOR="$RED"
#
# # Don't show if we have a stash
# unset GIT_PS1_SHOWSTASHSTATE
# # We want our own colors
# unset GIT_PS1_SHOWCOLORHINTS
#
# export PROMPT_COMMAND="__git_ps1 \"$BOLD_GREEN\u@\h$NORMAL:$BOLD_BLUE\w$NORMAL\" \"\342\230\242 \" \"$YELLOW[%s$YELLOW]$NORMAL\""

# ----------------------------------------------------------------------------
#
# # Check the OS type
# # Adapted from Nicolas Martyanoff's answer at
# # http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
# platform='unknown'
# unamestr=`uname`
#
# if [[ "$unamestr" == 'Linux' ]]; then
#    platform='linux'
# elif [[ "$unamestr" == 'Darwin' ]]; then
#    platform='darwin'
# fi
#
# #alias ls="ls --color=auto"
#
# # Linux specfic
# #if [[ $platform == 'linux' ]]; then
#   #alias ls='ls --color=auto'
# #fi
#
# # OS X specfic
# if [[ $platform == 'darwin' ]]; then
#
#   # Git completion
#   if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
#     . `brew --prefix`/etc/bash_completion.d/git-completion.bash
#   fi
#
#   if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
#     . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
#   fi
#
#   #source ~/.rvm/scripts/rvm
#
#   #if test -f ~/.rvm/scripts/rvm; then
#   #  [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
#   #fi
#
#   # Add colour to ls
#   export CLICOLOR=1
#   export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#
#   # Load local bin fallback
#   export PATH="/usr/local/bin:$PATH"
#   # Load gnu utils
#   export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
#   # Load local ruby
#   export PATH="$HOME/.rvm/bin:$PATH"
#   # Load local rvm
#   export PATH="$HOME/.rvm/scripts/rvm:$PATH"
#   # Load node
#   export PATH="$HOME/local/node/bin:$PATH"
#   # Load npm
#   export PATH="/usr/local/share/npm/bin:$PATH"
#   # Load sbin
#   export PATH="/usr/local/sbin:$PATH"
#
#   # Use gnu utils manpages
#   MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
# fi
#
#
# export PATH="$HOME/.composer/vendor/bin:$PATH"
#
# # Add cake bake to path
# export PATH="$PATH:/usr/share/cakephp/lib/Cake/Console"
#
# # Color for manpages
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;32m'
#
# # ~/.bashrc: executed by bash(1) for non-login shells.
# # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# # for examples
#
# # If not running interactively, don't do anything
# [ -z "$PS1" ] && return
#
# # don't put duplicate lines or lines starting with space in the history.
# # See bash(1) for more options
# HISTCONTROL=ignoreboth
#
# # append to the history file, don't overwrite it
# shopt -s histappend
#
# # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=1000
# HISTFILESIZE=2000
#
# # check the window size after each command and, if necessary,
# # update the values of LINES and COLUMNS.
# shopt -s checkwinsize
#
# # If set, the pattern "**" used in a pathname expansion context will
# # match all files and zero or more directories and subdirectories.
# #shopt -s globstar
#
# # make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
# # set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi
#
# # set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac
#
# #RCol='\[\e[0m\]'    # Text Reset
# #Red='\[\e[0;31m\]'  # Red
# #Gre='\[\e[0;32m\]'  # Green
# #Yel='\[\e[0;33m\]'  # Yellow
# #Blu='\[\e[0;34m\]'  # Blue
# #Pur='\[\e[0;35m\]'  # Purple
# #Cya='\[\e[0;36m\]'  # Cyan
# #Whi='\[\e[0;37m\]'  # White
#
# # uncomment for a colored prompt, if the terminal has the capability; turned
# # off by default to not distract the user: the focus in a terminal window
# # should be on the output of commands, not on the prompt
# #force_color_prompt=yes
#
# if [ -n "$force_color_prompt" ]; then
#     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#     # We have color support; assume it's compliant with Ecma-48
#     # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#     # a case would tend to support setf rather than setaf.)
#     color_prompt=yes
#     else
#     color_prompt=
#     fi
# fi
#
#
# # check if we are local or remote via ssh. if remote, use red colours.
# if [ -n "$SSH_CLIENT" ]; then
#     # connecting via ssh, use red coloured prompt
#     if [ "$color_prompt" = yes ]; then
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\$ '
#     else
#         PS1="\[\033[31m\][\w]\[\033[0m\]\n\[\033[1;33m\]\u\[\033[1;31m\]-> \[\033[0m\]"
#     fi
# else
#     # local coloured prompt
#     if [ "$color_prompt" = yes ]; then
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#     else
#         PS1="\[\033[32m\][\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
#     fi
# fi
# unset color_prompt force_color_prompt
#
# # If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac
#
# # enable color support of ls
# #if [ -x /usr/bin/dircolors ]; then
#     #test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# #fi
#
# # enable programmable completion features (you don't need to enable
# # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# # sources /etc/bash.bashrc).
# if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#     . /etc/bash_completion
# fi
#
# # Alias definitions.
# # You may want to put all your additions into a separate file like
# # ~/.bash_aliases, instead of adding them here directly.
# # See /usr/share/doc/bash-doc/examples in the bash-doc package.
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# # Local definitions.
# if [ -f ~/.bash_local ]; then
#   . ~/.bash_local
# fi
#
# # Git bash completions
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
#
# #  Customize BASH PS1 prompt to show current GIT repository and branch.
# #  by Mike Stewart - http://MediaDoneRight.com
#
# #  SETUP CONSTANTS
# #  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
# #  I don't remember where I found this.  o_O
#
# # Reset
# Color_Off="\[\033[0m\]"       # Text Reset
#
# # Regular Colors
# Black="\[\033[0;30m\]"        # Black
# Red="\[\033[0;31m\]"          # Red
# Green="\[\033[0;32m\]"        # Green
# Yellow="\[\033[0;33m\]"       # Yellow
# Blue="\[\033[0;34m\]"         # Blue
# Purple="\[\033[0;35m\]"       # Purple
# Cyan="\[\033[0;36m\]"         # Cyan
# White="\[\033[0;37m\]"        # White
#
# # Bold
# BBlack="\[\033[1;30m\]"       # Black
# BRed="\[\033[1;31m\]"         # Red
# BGreen="\[\033[1;32m\]"       # Green
# BYellow="\[\033[1;33m\]"      # Yellow
# BBlue="\[\033[1;34m\]"        # Blue
# BPurple="\[\033[1;35m\]"      # Purple
# BCyan="\[\033[1;36m\]"        # Cyan
# BWhite="\[\033[1;37m\]"       # White
#
# # Underline
# UBlack="\[\033[4;30m\]"       # Black
# URed="\[\033[4;31m\]"         # Red
# UGreen="\[\033[4;32m\]"       # Green
# UYellow="\[\033[4;33m\]"      # Yellow
# UBlue="\[\033[4;34m\]"        # Blue
# UPurple="\[\033[4;35m\]"      # Purple
# UCyan="\[\033[4;36m\]"        # Cyan
# UWhite="\[\033[4;37m\]"       # White
#
# # Background
# On_Black="\[\033[40m\]"       # Black
# On_Red="\[\033[41m\]"         # Red
# On_Green="\[\033[42m\]"       # Green
# On_Yellow="\[\033[43m\]"      # Yellow
# On_Blue="\[\033[44m\]"        # Blue
# On_Purple="\[\033[45m\]"      # Purple
# On_Cyan="\[\033[46m\]"        # Cyan
# On_White="\[\033[47m\]"       # White
#
# # High Intensty
# IBlack="\[\033[0;90m\]"       # Black
# IRed="\[\033[0;91m\]"         # Red
# IGreen="\[\033[0;92m\]"       # Green
# IYellow="\[\033[0;93m\]"      # Yellow
# IBlue="\[\033[0;94m\]"        # Blue
# IPurple="\[\033[0;95m\]"      # Purple
# ICyan="\[\033[0;96m\]"        # Cyan
# IWhite="\[\033[0;97m\]"       # White
#
# # Bold High Intensty
# BIBlack="\[\033[1;90m\]"      # Black
# BIRed="\[\033[1;91m\]"        # Red
# BIGreen="\[\033[1;92m\]"      # Green
# BIYellow="\[\033[1;93m\]"     # Yellow
# BIBlue="\[\033[1;94m\]"       # Blue
# BIPurple="\[\033[1;95m\]"     # Purple
# BICyan="\[\033[1;96m\]"       # Cyan
# BIWhite="\[\033[1;97m\]"      # White
#
# # High Intensty backgrounds
# On_IBlack="\[\033[0;100m\]"   # Black
# On_IRed="\[\033[0;101m\]"     # Red
# On_IGreen="\[\033[0;102m\]"   # Green
# On_IYellow="\[\033[0;103m\]"  # Yellow
# On_IBlue="\[\033[0;104m\]"    # Blue
# On_IPurple="\[\033[10;95m\]"  # Purple
# On_ICyan="\[\033[0;106m\]"    # Cyan
# On_IWhite="\[\033[0;107m\]"   # White
#
# # Various variables you might want for your PS1 prompt instead
# Time12h="\T"
# Time12a="\@"
# PathShort="\w"
# PathFull="\W"
# NewLine="\n"
# Jobs="\j"
# Username="\u"
# Host="\h"
#
#  if [ $UID -eq "0" ];then
#      PS1="${Red}\h \W ->${RCol} "        # Set prompt for root
#  else
#      PS1="\h \W -> "
#  fi
#
# # This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# # I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better
#
# if [ -n "$SSH_CLIENT" ]; then
#     # connecting via ssh, use red coloured prompt
#     export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
#     if [ $? -eq 0 ]; then \
#       echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
#       if [ "$?" -eq "0" ]; then \
#         # @4 - Clean repository - nothing to commit
#         echo "'$BIGreen'"$(__git_ps1 " (%s)"); \
#       else \
#         # @5 - Changes to working tree
#         echo "'$BIRed'"$(__git_ps1 " {%s}"); \
#       fi) '$BWhite$PathShort$Color_Off' \n'$On_IRed" SSH "$Color_Off" "$Username@$Host' $ "; \
#     else \
#       # @2 - Prompt when not in GIT repo
#       echo " '$BWhite$PathShort$Color_Off' \n'$On_IRed" SSH "$Color_Off" "$Username@$Host' $ "; \
#     fi)'
#   else
#     # local coloured prompt
#     export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
#     if [ $? -eq 0 ]; then \
#       echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
#       if [ "$?" -eq "0" ]; then \
#         # @4 - Clean repository - nothing to commit
#         echo "'$BIGreen'"$(__git_ps1 " (%s)"); \
#       else \
#         # @5 - Changes to working tree
#         echo "'$BIRed'"$(__git_ps1 " {%s}"); \
#       fi) '$BWhite$PathShort$Color_Off' \n'$Username@$Host' $ "; \
#     else \
#       # @2 - Prompt when not in GIT repo
#       echo " '$BWhite$PathShort$Color_Off' \n'$Username@$Host' $ "; \
#     fi)'
#   fi
#   ----------------------------------------------------------------------------
#   export PS1="%F{white}%K{red} %n %f%k%F{red}%K{green}"$'\u25b6'"%f%k%F{white}%K{green} %m %f%k%F{green}%K{blue}"$'\u25b6'"%f%k%F{white}%K{blue} %~ %f%k%F{blue}"$'\u25b6'"%f"

#   ----------------------------------------------------------------------------
#   if ((EUID)); then
#     PS1="\[\e]0;\u@\h:\w\a\e[1;32m\]\u@\h\[\e[34m\] \w \[\e[0m\]\$ "
#   else
#     PS1="\[\e]0;\u@\h:\w\a\e[1;31m\]\h\[\e[34m\] \w \[\e[0m\]\$ "
#   fi
#   ----------------------------------------------------------------------------

#   ----------------------------------------------------------------------------
#   exportPS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\w\n\$ "
#   ----------------------------------------------------------------------------

#   ----------------------------------------------------------------------------
#   export PS1=`echo -ne "$HOST_COLOR\h\[\033[00m\]\[\e[$COLON_COLOR\]:\[\033[01;32m\]\w\[\033[00m\]\\[\033[01;33m\]\$\[\033[00m\] "`
#   ----------------------------------------------------------------------------

#   ----------------------------------------------------------------------------
#   n="${c}m\]"
#   export PS1="$n\n${c}1;3\$(if [ \$? -eq 0 ]; then echo '2'; else echo '1'; fi);40m\]*$n ${c}36;40m\]\@ \d$n ${c}35;40m\]\j$n ${c}37;40m\]\u${c}33m\]@\h$n ${c}1;34;40m\]\w$n ${c}32;40m\]\$(/bin/ls -1 | /usr/bin/wc -l) files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //')${c}m\]\n${c}1;3\$(if [ ${EUID} -eq 0 ]; then echo '1'; else echo '4'; fi);47m\]>$n "
#  ----------------------------------------------------------------------------

#   ----------------------------------------------------------------------------
#   export PS1="\n${p}╔ǁ ${c}1;3\$(if [ \$? -eq 0 ]; then echo '2'; else echo '1'; fi)m\]*$p ǁ ${c}36m\]\@ \d$p ǁ ${c}35m\]\j$p ǁ ${c}30m\]\u${c}33m\]@\h$p ǁ ${c}1;34m\]\w$p ǁ ${c}32m\]\$(/bin/ls -1 | /usr/bin/wc -l) files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //')${c}m\]$p ǁ═╗\n╚═${c}1;3\$(if [ ${EUID} -eq 0 ]; then echo '1'; else echo '4'; fi)m\]»${c}m\] "
#   ----------------------------------------------------------------------------


#   Set Paths
#   ------------------------------------------------------------

#   Set Homebrew Token
#   ------------------------------------------------------------
    export HOMEBREW_GITHUB_API_TOKEN="8de5ef0af60f84f164321a921e7050597f8fe586"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/nano

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=GxFxCxDxBxegedabagaced

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
    alias less='less -FSRXc'                    # Preferred 'less' implementation
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level
    alias ...='cd ../../'                       # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels
    alias edit='atom'                           # edit:         Opens any file in atom editor
    alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
    alias ~="cd ~"                              # ~:            Go Home
    alias c='clear'                             # c:            Clear terminal display
    alias which='type -all'                     # which:        Find executables
    alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
    alias show_options='shopt'                  # Show_options: display bash options settings
    alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
    alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive

#   mcd () { mkdir -p "$1" && cd "$1"; }         # mcd:          Makes new Dir and jumps inside
#   trash () { command mv "$@" ~/.Trash ; }      # trash:        Moves a file to the MacOS trash
#   ql () { qlmanage -p "$*" >& /dev/null; }     # ql:           Opens any file in MacOS Quicklook Preview
#   alias DT='tee ~/Desktop/terminalOut.txt'     # DT:           Pipe content to file on MacOS Desktop
#   cd() { builtin cd "$@"; ll; }                # Always list directory contents upon 'cd'

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
    alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () {
      /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ;
    }

#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

    zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
    alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
    alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
    alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
    alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }


#   ---------------------------
#   4.  SEARCHING
#   ---------------------------
    alias qfind="find . -name "                 # qfind:    Quickly search for file
    ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
    ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
    ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
    spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


#   ---------------------------
#   5.  PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
    my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }


#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

    alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
    alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
    alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
    alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
    alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
    alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
    alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
    alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
    alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
    alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

#   lock:  run system lock
#   -------------------------------------------------------------------
    alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

#   mountReadWrite:  For use when booted into single-user
    alias mountReadWrite='/sbin/mount -uw /'

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
    alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#    screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
    alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#   ---------------------------------------
#   8.  WEB DEVELOPMENT
#   ---------------------------------------

    alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
    alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
    alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
    alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
    alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
    httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
    httpDebug () {
      /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ;
    }

#   ---------------------------------------
#   9.  REMINDERS & NOTES
#   ---------------------------------------

#   remove_disk: spin down unneeded disk
#   ---------------------------------------
#   diskutil eject /dev/disk1s3

#   to change the password on an encrypted disk image:
#   ---------------------------------------
#   hdiutil chpass /path/to/the/diskimage

#   to mount a read-only disk image as read-write:
#   ---------------------------------------
#   hdiutil attach example.dmg -shadow /tmp/example.shadow -noverify

#   mounting a removable drive (of type msdos or hfs)
#   ---------------------------------------
#   mkdir /Volumes/Foo
#   ls /dev/disk*   to find out the device to use in the mount command)
#   mount -t msdos /dev/disk1s1 /Volumes/Foo
#   mount -t hfs /dev/disk1s1 /Volumes/Foo

#   to create a file of a given size: /usr/sbin/mkfile or /usr/bin/hdiutil
#   ---------------------------------------
#   e.g.: mkfile 10m 10MB.dat
#   e.g.: hdiutil create -size 10m 10MB.dmg
#   the above create files that are almost all zeros - if random bytes are desired
#   then use: ~/Dev/Perl/randBytes 1048576 > 10MB.dat

#   function schema
#   name()
#   {}
