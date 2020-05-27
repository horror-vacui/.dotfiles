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


# set PATH so it includes user's private bin directories; +TeXLive
if [ "HOSTNAME$" = "aprosag" ]; then
  # It might worth considering different dotfiles for different machines for the differences
  PATH="/usr/local/texlive/2020/bin/x86_64-linux:$HOME/bin:$HOME/.local/bin:$HOME/bin_git:/usr/java/jre1.8.0_161/bin:$PATH"; export PATH
  MANPATH=/usr/local/texlive/2020/texmf-dist/doc/man:$MANPATH; export MANPATH
  INFOPATH=/usr/local/texlive/2020/texmf-dist/doc/info:$INFOPATH; export INFOPATH
fi
