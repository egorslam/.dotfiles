### Installation
_________

#### On fresh Mac OS
##### Install XCode Command Line Tools
```
xcode-select --install
```

##### Clone dotfiles
```
git clone git@github.com:egorslam/.dotfiles.git ~/.dotfiles
```

##### Install [Homebrew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Setup brew path untill .zprofile is linked:
```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

##### Install [Stow](https://www.gnu.org/software/stow/manual/stow.html)
```
brew install stow
```

##### Link config files with Stow

Delete existing .zshrc before linking:
```
rm -f cd ~/.zshrc
```

```
cd ~/.dotfiles && stow \
  git \
  homebrew \
  nvim \
  tmux \
  zsh
```

##### Install packages
```
brew bundle --global
```

##### Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### Install Node.js

1. ```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

2. ```
asdf install nodejs latest
```

3. ```
asdf global nodejs latest
```
