### Installation
_________

#### On fresh Mac OS
##### Install XCode Command Line Tools
```
xcode-select --install
```


##### Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
```
cd ~/dotfiles && stow \
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
