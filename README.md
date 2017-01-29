# Dotfiles

## source:
## https://github.com/justone/dotfiles

## Requirements (will be scripted):

    $ apt install python vim-nox exuberant-ctags git python-pip autojump
    $ sudo pip install virtualenvwrapper dbgp vim-debug pep8 flake8 pyflakes isort
    $ sudo pip install --upgrade ipwhois
    $ sudo pip install --upgrade pythonwhois
    $ sudo sed -i '1s/^/#!\/usr\/bin\/env python\n/' /usr/local/bin/ipwhois_cli.py

    populate autojump
    $ for elem in $(find ~/ -type d -not -path '*/\.*'); do cd $elem; echo $elem; done

## How to:

    $ cd $HOME
    $ git clone git@github.com:username/dotfiles-managements.git .dotfiles-management
    $ ./.dotfiles-management/bin/dfm install # creates symlinks to install files
    $ vim -E -u $HOME/.vimrc +qall

## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
