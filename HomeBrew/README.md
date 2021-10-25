### Install Brew using Terminal

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Brew Bundle

- The most common command 
```sh
brew bundle install
```

This will search for `~/BrewFile` and install its content

- Install a specific file

```sh
brew bundle install --file="/path/to/Brewfile"
```

## Create Brew Bundle File

- Creating file in current directory
```sh
brew bundle dump
```

- Create file with specific path
```sh
brew bundle dump --file="/destination/path"
```

- Re-create the BrewFile

```sh
brew bundle dump --force
```
