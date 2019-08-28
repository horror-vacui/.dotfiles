# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# SONNET PATH
SONNET_DIR=/usr/local/sonnet; export SONNET_DIR

# ADS PATHS
HPEESOF_DIR=/usr/local/ADS2017; export HPEESOF_DIR
PERL5LIB=$HPEESOF_DIR/tools/lib/perl5/5.22.0; export PERL5LIB

# set PATH so it includes user's private bin directories; +TeXLive
PATH="/usr/local/texlive/2017/bin/x86_64-linux:$HOME/bin:$HOME/.local/bin:$HOME/bin_git:$PATH:$SONNET_DIR/bin"; export PATH
MANPATH=/usr/local/texlive/2017/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2017/texmf-dist/doc/info:$INFOPATH; export INFOPATH


# focus on selected application windows
source "$HOME/bin/search_and_create.sh"
