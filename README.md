# Dotfiles

## source:
## https://github.com/justone/dotfiles

## Requirements:

    $ sudo pip install virtualenvwrapper dbgp vim-debug pep8 flake8 pyflakes isort
    $ apt install python vim-nox exuberant-ctags git python-pip

## How to:

    $ cd $HOME
    $ git clone git@github.com:username/dotfiles-managements.git .dotfiles-management
    $ ./.dotfiles-management/bin/dfm install # creates symlinks to install files
    $ vim -E -u $HOME/.vimrc +qall

## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
