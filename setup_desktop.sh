CURRENT_PATH=$(pwd)
FILES=("$HOME/.bashrc" "$HOME/.vimrc" "$HOME/.tmux.conf")

# $1 => question
function confirm(){
  local input
  echo -n "$1 [y/N]"
  read input
  if [[ "$input" != "Y" && "$input" != "y" ]];then
    echo "exiting"
    exit
  fi
}

# Check if .bashrc or .vimrc exits before create symlink
function check_rc_exist(){
  for i in ${FILES[@]};do
    if [[ -h "$i" || -e "$i" ]];then
      confirm "$i already exits, delete it? "
      rm "$i"
    fi
  done
}

# $1 => {'0' => server, '1' => desktop}
function create_symlinks(){
  local b=".bashrc"
  local v=".vimrc"
  if [[ $1 == "0" ]];then
    ln -s "$CURRENT_PATH"/server/"$b" "$HOME"/"$b"
    ln -s "$CURRENT_PATH"/server/"$v" "$HOME"/"$v"
  else
    ln -s "$CURRENT_PATH"/"$b" "$HOME"/"$b"
    ln -s "$CURRENT_PATH"/"$v" "$HOME"/"$v"
  fi
}

check_rc_exist
create_symlinks
