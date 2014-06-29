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
 - **Vundle**: As I said, its used to install and configure the vim plugins.
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

### System status scripts for the tmux statusbar

The customized version of the `full.vim` tmuxline preset uses some simple scripts to retrieve information such as the current battery life, the SSID of the WLAN the computer is connected to, etc.
Some of these scripts need root privileges to execute some of their internall commands, and these scripts use `sudo` in such cases.   
To make the statusbar work properly, you should configure sudo to not ask for a password when running those scripts (Tmux cannot ask you for the password). For that purpose add the following two lines to the end of your `sudoers` file:

    YOUR_USERNAME ALL = (root) NOPASSWD: /usr/local/bin/wifi_status.sh
    YOUR_USERNAME ALL = (root) NOPASSWD: /usr/local/bin/upgrade_status.sh
    
Usage
=====

Several scripts are provided to make the syncronization of the setup between different computers easy:
***NOTE:*** *When talking about the setup and its configuration, the following terms are used: "Current" refers to the configuration which is applied currently on the system, i.e. the sum of the config files stored in your home directory and others. The configuration stored on the repository has nothing to do with these (Could be viewed as a backup), and changes on the repo doesn't affect the computer settings.*
*Also, this document refers to "remote config" when talking about the last version stored on the remote repository.*

### `apply_config.sh`

This script applies the current configuration and generates the required scripts. For example:

    ~$ vim .vimrc #Change the current airline theme to 'molokai'
    ~$ cd TerminalWorkspace/
    ~/TerminalWorkspace$ . ./apply_config.sh
    
Now vim, tmux, and the shell promt are using the molokai theme. 

Please note that this scripts should be called using `. ` to prevent shell forking and make configuration sourcing work.
For that purpose the default `.zshrc` script contains several aliases to define shorthands of these scripts. That aliases could be runned from any directory. In the case of `apply_changes.sh`, the alias is `twapply`:

    ~$ twapply

When applying changes, `apply_changes.sh` sources the ZSH configuration file (`.zshrc`) to refresh the prompt and others. 
Since sourcing a config file only affects the shell from which the `source` command was called, if you want to refresh all your shell iinstances to view the new setup on the prompt you have to source `.zshrc` manually on each of them. An alias `refresh` is provided for that purpose:

    $ refresh
    
    
### `sync_home.sh`

The purpose of this script is to syncronize the setup on the system taking the values of the repository. This script overwrites all the configuration files of the computer and applies the setup:
    $ cd TerminalWorkspace
    $ . ./sync_home.sh

Now the configuration of the repository is stored and aplied on the system.  
A `twsynchome` alias is provided too.


### `sync_repo.sh`

The purpose is the inverse of `sync_home.sh`: Syncronize the configuration on the repository to the current setup of the system. Also a `twsyncrepo` is provided:

    $twsyncrepo
    $ cd ~/TerminalWorkspace
    $ git commit -a -m "This is my new setup"
    $ git push
    
Note that `sync_repo.sh` applies the current configuration too, just for the case we commit a setup without having seen its result.

### `push.sh` and `pull.sh`

Two scripts are provided for easy syncronization between computers: `push.sh` and `pull.sh` and its aliases conterparts `twpush` and `twpull`.    

`push.sh` applies the current configuration, saves it on the repository, and then uploads it to the remote. It will create a commit automatically and will be ask you for credentials (If you have configured git to use https for remote conection).  
On the other hand, `pull.sh` discards the current repo changes, updates it to the last version of the remote, and then syncs the system config and applies the setup. 

Using these two scripts sharing the setup between two computers is easy and fast! Consider two computers A and B. Now the user on A changes its terminal setup:

    user@A ~$ vim .vimrc
    
The user of A just pushes the changes:

    user@A ~$ twpush
    
This applies the changes and sends the setup to the remote. Then the user goes to B and just pulls the setup:

    user@B ~$ twpull
    
Now the setup is applied on B and both computers are sharing exactly the same terminal setup!

    
License
=======

All the configuration scripts provided here are provided without any guarantee. You are allowed to freely copy,modify, and distribute them under your own requeriments; but I don't take any responsability of damage and other issues related to the usage of this scripts.
