#!/bin/bash

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -LJO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
curl -LJO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
fc-cache -f -v
cd

sudo apt install zsh
chsh -s $(which zsh)
exec $SHELL
echo $SHELL --version
echo $SHELL

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --bare git@github.com:imamrb/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no

# backup existing dotfiles
mkdir -p .dotfiles-backup && dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}

dotfiles checkout
