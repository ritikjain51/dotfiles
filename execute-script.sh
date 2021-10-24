# !/bin/sh

platform_name=`uname -s`


case $platform_name in
Linux*)
    echo "Linux destro found."
    #apt update
    #apt install tmux vim -y
    ;;
MacOs*)
    echo "MacOS found"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ;;
*)
    echo "Platform not found"
    exit 0;
esac


# Setup TMUX Configuration 
ln -s -f `${PWD}/.tmux/.tmux.conf` `~/.tmux.conf`
cp `.tmux/.tmux.conf.local` `~/.tmux.conf.local`


# Setting up VIMRC
ln -s `${PWD}/vim/.vimrc` `~/.vimrc`

