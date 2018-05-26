#######################################################################
# It is written for bash, but can be used with (t)cshell as well      #
# Note in (t)cshell aliases does not have '=' sign                    #
#    --> sed "/alias/ s/=/ /" to convert it. Consider the "-i" option #
#######################################################################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ll='ls -alF --color=auto'
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

bck() { cp "$1" "$1_bck"; }
brightness() { sudo sh -c "echo \"$1\" > /sys/class/backlight/intel_backlight/brightness"; }
