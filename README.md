# Dotfiles

## Installation

```sh
$ brew install antigen
$ sudo gem install homesick
$ homesick clone alwaysblank/dotfiles
$ homesick link dotfiles
```

## Replacement Binaries

These dotfiles alias various default binaries such as `ls`, `cat`, `top`, `kill`, and `find` to better, more well-rounded alternatives. 

```sh
$ brew install exa bat fd
$ yarn global add vtop fkill
```

## iTerm 2

Import the theme located at `~/.themes/material-design-dark.itermcolors`


## Debug

If Antigen is not updating, run `antigen reset` and restart your terminal.
