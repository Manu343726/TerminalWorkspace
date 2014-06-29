TerminalWorkspace
=================

My personal zsh, tmux, and vim setup. No guarantees, works for me at least.

The (desired) result
====================

Here is a screenshoot of my common everyday workspace (Using the  [terminator](http://gnometerminator.blogspot.com.es/p/introduction.html) terminal emulator):

![](https://pbs.twimg.com/media/BrO-g7TCEAMKkMt.png:large)


The configuration presented here is designed to work on desktop (Via terminal emulators) and TTYs.


Dependencies
============

This setup is based on vim and some vim plugins to enance the UX when using tmux and zsh:

 - [**Oh My ZSH**](https://github.com/robbyrussell/oh-my-zsh): This framework is used for an easy and ready-to-use zsh configuration.
 - **vim**: Yep, I'm not an EMACS guy.
 - **tmux**: We all hate screen, isn't?
 - **fbterm**: The default linux terminal doesn't support 256 colors, so fbterm is used when running this setup on TTY.
 - [**acpi**](): Its used to retrieve some system information for the status bar.

Also some vim plugins are required. Presonally I prefer to install vim plugins via [Vundle](https://github.com/gmarik/Vundle.vim):

 - [**vim-airline**](https://github.com/bling/vim-airline): The vimscript-only replacement of powerline. I selected this instead of powerline because its configuration (Its very easy) and its great integration with other similar plugins.
 - [**tmuxline**](https://github.com/edkolev/tmuxline.vim): A tmux status bar customization plugin with vim-airline integration.
 - [**promptline**](https://github.com/edkolev/promptline.vim): Other airline-ready plugin. In this case for shell prompt customization.

The set of vim plugins selected to customize the terminal are all very similar, and their configuration scripts work in almost the same way (See the docs).


Installation
============

Just run `install.sh`:
    
    $ git clone https://github.com/Manu343726/TerminalWorkspace.git
    $ cd TerminalWorkspace
    $ ./install.sh
    
Automatically this script updates all the configuration files of fbterm, tmux, zsh, etc in your home directory, and also
configures the vim plugins to be ready to work. Also it tries to install all the required dependencies first, if they are not installed (This works for ArchLinux only).   
The installation script needs root privileges to perform some steps. In that cases the script uses `sudo` internally to call the required commands, so its posible that the install may be interrumped by sudo asking you for the user password.

Also a `sync.sh` script is provided to update the scripts of this repository to the values of your current configuration. This might help if you have forked this and mantain
your own configuration repository:

    $ cd TerminalWorkspace
    $ ./sync.sh
    $ git add -A; git commit -m "Some config fixes"; git push
    
Or just use `push.sh` and `pull.sh`:

    $ cd TerminalWOrkspace
    $ ./push.sh     #This automatically syncs, commits, and pushes to the remote.
    $ ./pull.sh     #Discards changes, pulls from remote, and runs install.sh

### System status scripts for the tmux statusbar

The customized version of the `full.vim` tmuxline preset uses some simple  scripts to retrieve information such as the current battery life, the SSID of the WLAN the computer is connected to, etc.
Some of these scripts need root privileges to execute some of their internall commands, and these scripts use `sudo` in such cases.   
To make the statusbar work properly, you should configure sudo to not ask for a password when running those scripts (Tmux cannot ask you for the password). For that purpose add
the following two lines to the end of your `sudoers` file:

    YOUR_USERNAME ALL = (root) /usr/local/bin/wifi_status.sh
    YOUR_USERNAME ALL = (root) /usr/local/bin/upgrade_status.sh
    
License
=======

All the configuration scripts provided here are provided without any guarantee. You are allowed to freely copy,modify, and distribute them under your own requeriments; but I don't take any responsability of damage and other issues related to the usage of this scripts.
