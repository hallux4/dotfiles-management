# Dotfiles

## source:
## https://github.com/justone/dotfiles

## Requirements (will be scripted):

```bash
sudo apt build-essential
sudo apt install vim-nox exuberant-ctags git python-dev python3-dev  python-pip python3-pip zsh ntpdate python-setuptools python3-setuptools
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
sudo pip install --upgrade ipwhois
sudo pip install --upgrade pythonwhois
sudo pip install virtualenvwrapper dbgp vim-debug pep8 flake8 pyflakes isort
sudo pip3 install virtualenvwrapper dbgp vim-debug pep8 flake8 pyflakes isort

sudo sed -i '1s/^/#!\/usr\/bin\/env python\n/' /usr/local/bin/ipwhois_cli.py

# check localtime
# ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

```

## How to:

```bash
cd $HOME
git clone https://github.com/hallux4/dotfiles-management.git .dotfiles-management
./.dotfiles-management/bin/dfm install # creates symlinks to install files
vim -E -u $HOME/.vimrc +qall
```

## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
