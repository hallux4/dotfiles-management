# Dotfiles

## source:
## https://github.com/justone/dotfiles

    $ git clone git@github.com:username/dotfiles-managements.git .dotfiles-management
    $ cd .dotfiles-management
    $  # edit files
    $  # edit files
    $ git push origin master

Finally, to install your dotfiles onto a new system:

    $ cd $HOME
    $ git clone git@github.com:username/dotfiles-managements.git .dotfiles-management
    $ ./.dotfiles-management/bin/dfm install # creates symlinks to install files

Requirements:

sudo pip install virtualenvwrapper


## Full documentation

For more information, check out the [wiki](http://github.com/justone/dotfiles/wiki).

You can also run <tt>dfm --help</tt>.
