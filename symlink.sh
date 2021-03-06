dir="${HOME}/.dotfiles"
bash=( .bash_aliases .bash_logout .bashrc .dircolors .profile )
for f in "${bash[@]}"; do
  ln -s "${dir}/bash/$f" "${HOME}/$f" 
done

f=".taskrc"
ln -s "${dir}/task/$f" "${HOME}/$f" 

f=".tmux.conf"
ln -s "${dir}/tmux/$f" "${HOME}/$f"

f="xfce4-keyboard-shortcuts.xml"
ln -s "${dir}/xfce/$f" "${HOME}/$f" 
