CURRENT_PATH=$(pwd)
FILES=("/.bashrc" "/.vimrc" "/.tmux.conf")
INPUT_TYPE="$1"

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
    local full_path="$HOME""$i"
    if [[ -h "$full_path" || -e "$full_path" ]];then
      confirm "$full_path already exits, delete it? "
      rm "$full_path"
    fi
  done
}

# $1 => {'0' => server, '1' => desktop}
function create_symlinks(){
  for i in ${FILES[@]};do
    if [[ $TYPE == "server" ]];then
      ln -s "$CURRENT_PATH/server$i" "$HOME""$i"
    elif [[ $TYPE == "desktop" ]];then
      ln -s "$CURRENT_PATH""$i" "$HOME""$i"
    else
      echo "error"
      exit
    fi
  done
}

# Assign value to TYPE
function check_type(){
  if [[ "$INPUT_TYPE" == "-s" || "$INPUT_TYPE" == "-S" ]];then
    TYPE="server"
  elif [[ "$INPUT_TYPE" == "-d" || "$INPUT_TYPE" == "-D" ]];then
    TYPE="desktop"
  else
    echo "Invalid argument. -s for server mode, -d for desktop mode"
    exit
  fi
}

function setup_vundle(){
  confirm "Set up Vundle?"
  cp -r .vim ~
  git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
  echo "Run PluginInstall to install the plugins"
}


check_type
check_rc_exist "$TYPE"
create_symlinks
setup_vundle
