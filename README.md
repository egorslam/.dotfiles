### Installation for Mac OS
#### Install XCode Command Line Tools
```
xcode-select --install
```

#### Clone this repository
```
git clone git@github.com:egorslam/.dotfiles.git ~/.dotfiles
```
##### Install [Homebrew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Set up Homebrew path until .zprofile is linked
```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### Install [Stow](https://www.gnu.org/software/stow/manual/stow.html)
```
brew install stow
```

#### Link config files with Stow

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

#### Install packages
```
brew bundle --global
```

#### Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Install Node.js

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
```

#### Install Ruby

```
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
```

#### Install Python

```
asdf plugin add python 
asdf install python latest
asdf global python latest
python3 -m pip install --user --upgrade pynvim
```