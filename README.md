TerminalWorkspace
=================

My personal zsh, tmux, and vim setup. No guarantees, works for me at least.

The (desired) result
====================

Here is a screenshoot of my common everyday workspace (Using the  [terminator](http://gnometerminator.blogspot.com.es/p/introduction.html) terminal emulator):



The configuration presented here is designed to work on desktop (Via terminal emulators) and TTYs.


Dependencies
============

This setup is based on vim and some vim plugins to enance the UX when using tmux and zsh:

 - [**Oh My ZSH**](https://github.com/robbyrussell/oh-my-zsh): This framework is used for an easy and ready-to-use zsh configuration.
 - **vim**: Yep, I'm not an EMACS guy.
 - **tmux**: We all hate screen, isn't?
 - **fbterm**: The default linux terminal doesn't support 256 colors, so fbterm is used when running this setup on TTY.

Also some vim plugins are required. Presonally I prefer to install vim plugins via [Vundle](https://github.com/gmarik/Vundle.vim):

 - [**vim-airline**](https://github.com/bling/vim-airline): The vimscript-only replacement of powerline. I selected this instead of powerline because its configuration (Its very easy) and its great integration with other similar plugins.
 - [**tmuxline**](https://github.com/edkolev/tmuxline.vim): A tmux status bar customization plugin with vim-airline integration.
 - [**promptline**](https://github.com/edkolev/promptline.vim): Other airline-ready plugin. In this case for shell prompt customization.

The set of vim plugins selected to customize the terminal enviroment are all very similar, and their configuration scripts work in almost the same way (See the docs).

Plase note that the install script supposes that all the required dependencies are installed. Please be sure you have all the required programs and vim plugins (I recommend to run :VundleInstall before just to be sure) before running `install.sh`.


Installation
============

Just run `install.sh`:
    
    $ git clone https://github.com/Manu343726/TerminalWorkspace.git
    $ cd TerminalWorkspace
    $ ./install.sh
    
Automatically this script updates all the configuration files of fbterm, tmux, zsh, etc in your home directory, and also
configures the vim plugins to be ready to work.

The installation script needs root privileges to perform some steps. In that cases the script uses `sudo` internally to call the required commands, so its posible that the install may be interrumped by sudo asking you for the user password.


License
=======

All the configurations scripts presented here are provided without any guarantee. You are allowed to freely copy,modify, and distribute them under your own requeriments; but I don't take any responsability of damage and other issues related to the usage of this scripts.
