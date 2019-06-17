# My vimrc
A config setup for vim, used for development and adminstration.

# Quick Setup (without pluggins)
Drop into .vimrc into your home directory. Then, comment out the "vundle" section.

# Setting up all the pluggins
1. Install vundle:

    `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Install listed plugins:

    Launch `vim` and run `:PluginInstall`
     
3. Install YouCompleteMe

    ```
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --all
    ```
    
    ***NOTE:*** Refer to the [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Installation Guide.
