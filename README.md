# Dotfiles

## source:
## https://github.com/justone/dotfiles

## Requirements (will be scripted):

    ``` bash
    sudo apt install python vim-nox exuberant-ctags git python-dev  python-pip
    sudo pip install --upgrade pip
    sudo pip install --upgrade ipwhois
    sudo pip install --upgrade pythonwhois
    sudo pip install virtualenvwrapper dbgp vim-debug pep8 flake8 pyflakes isort
    
    sudo sed -i '1s/^/#!\/usr\/bin\/env python\n/' /usr/local/bin/ipwhois_cli.py
    ```

## How to:

    ``` bash
    cd $HOME
    git clone https://github.com/hallux4/dotfiles-management.git .dotfiles-management
    ./.dotfiles-management/bin/dfm install # creates symlinks to install files
    vim -E -u $HOME/.vimrc +qall
    ```

## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
