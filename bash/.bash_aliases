#######################################################################
# It is written for bash, but can be used with (t)cshell as well      #
# Note in (t)cshell aliases does not have '=' sign                    #
#    --> sed "/alias/ s/=/ /" to convert it. Consider the "-i" option #
#######################################################################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ll='ls -alFh --color=auto'
    alias la='ls -A --color=auto'
    alias lt='ls -ltrhA --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias unbracket='printf "\e[?2004l"'
# for vimlatex
alias vi='vim --servername vim'
alias vim='vim --servername vim'
alias sb='source ~/.bashrc'
alias dff='df -h -x "squashfs"'

alias wttr='curl http://v2.wttr.in/Dresden'
alias vw='vim Dropbox/vimwiki/index.wiki'

bck() { i=$(date "+%Y%m%d"); cp "$1" "$1_$i"; }
brightness() { sudo sh -c "echo \"$1\" > /sys/class/backlight/intel_backlight/brightness"; }
# For local aliases
if [ -f .bash_aliases_local ]; then
  source .bash_aliases_local
fi
