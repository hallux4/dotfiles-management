# Dotfiles

## source:
## https://github.com/justone/dotfiles

## Requirements (will be scripted):

```bash
sudo apt install build-essential
sudo apt install python vim ctags git zsh ntpdate
sudo pip install pep8 flake8 pyflakes isort
```

## How to:

```bash
cd $HOME
git clone https://github.com/hallux4/dotfiles-management.git .dotfiles-management
./.dotfiles-management/bin/dfm install # creates symlinks to install files
vim -E -u $HOME/.vimrc +qall
chsh -s $(which zsh)
```

## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
