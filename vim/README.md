For setting up vim 


Install VIM
- For linux
```sh
apt-get install vim -y
```

- For MacOs
```sh 
brew install vim
```


### Download VIM Plug manager
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

### Add configuration
```sh 
cp .vimrc ~/.vimrc
```

### Install PlugIns

```sh 
vi
:PlugInstall
```

