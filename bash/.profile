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

# focus on selected application windows
source "$HOME/bin/search_and_create.sh"

if [ "HOSTNAME$" = "ccn-bar223bl" ]; then
  # SONNET PATH
  SONNET_DIR=/usr/local/sonnet; export SONNET_DIR

  # ADS PATHS
  HPEESOF_DIR=/usr/local/ADS2017; export HPEESOF_DIR
  PERL5LIB=$HPEESOF_DIR/tools/lib/perl5/5.22.0; export PERL5LIB

  # set PATH so it includes user's private bin directories; +TeXLive
  PATH="/usr/local/texlive/2017/bin/x86_64-linux:$HOME/bin:$HOME/.local/bin:$HOME/bin_git:$PATH:$SONNET_DIR/bin"; export PATH
  MANPATH=/usr/local/texlive/2017/texmf-dist/doc/man:$MANPATH; export MANPATH
  INFOPATH=/usr/local/texlive/2017/texmf-dist/doc/info:$INFOPATH; export INFOPATH
fi  

# set PATH so it includes user's private bin directories; +TeXLive
if [ "HOSTNAME$" = "aprosag" ]; then
  # It might worth considering different dotfiles for different machines for the differences
  PATH="/usr/local/texlive/2020/bin/x86_64-linux:$HOME/bin:$HOME/.local/bin:$HOME/bin_git:/usr/java/jre1.8.0_161/bin:$PATH"; export PATH
  MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH; export MANPATH
  INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH; export INFOPATH
fi
