## Install Hack Nerd Fonts

```
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && curl -fLo https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

fc-cache -f -v
```

## Install ZSH
Link: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

```
sudo apt install zsh
chsh -s $(which zsh)
exec $SHELL
echo $SHELL --version
echo $SHELL
```

### Install Oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --bare git@github.com:imamrb/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles config --local status.showUntrackedFiles no

mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}

dotfiles checkout
```
