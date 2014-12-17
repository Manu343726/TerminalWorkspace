#Execute tmux on startup

if [ "$TERM" = "linux" ]; then
    TERM=fbterm tmux -2
elif [ "$TMUX" = "" ]; then 
    tmux -2;
fi

#Clone configuration repository and run install (If no root user):
if [[ ("$UID" -ne 0) && (! -d ~/TerminalWorkspace) ]]; then
    git clone https://github.com/Manu343726/TerminalWorkspace.git ~/TerminalWorkspace
    ~/TerminalWorkspace/install.sh
fi

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.gem/ruby/2.1.0/bin:$PATH #Ruby 
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id

#Load promptline prompt config:
source ~/.shell_prompt.sh

#Alias for shell config refresh:
alias refresh='source ~/.zshrc'

#Some aliases for Terminal Workspace configuration:
alias twinstall='. ~/TerminalWorkspace/install.sh'
alias twapply='. ~/TerminalWorkspace/apply_config.sh'
alias twsynchome='. ~/TerminalWorkspace/sync_home.sh'
alias twsyncrepo='. ~/TerminalWorkspace/sync_repo.sh'
alias twpull='. ~/TerminalWorkspace/pull.sh'
alias twpush='. ~/TerminalWorkspace/push.sh'

# My own custom aliases bellow:

alias smartmake='make clean; clear; make;'
alias templight='clang++-templight -templight -templight-safe-mode -templight-format xml'
alias templight11='templight -std=c++11'
alias g++11='g++ -std=c++11'
alias clang++11='clang++ -std=c++11'
alias c++='clang++'
alias c++11='clang++11'

alias arp-local-scan='sudo arp-scan --interface=wlp0s29f7u2 --localnet'
alias adsl='wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test100.zip'

alias gui='sudo systemctl isolate graphical.target'

alias 2048='~/Juegos/2048-cli/2048'

tssh()
{
    ssh -t $1 tmux set -g prefix C-m-b ';' /bin/zsh ';' tmux set -g prefix C-b ';' exit
}

#Fix GREP_OPTIONS warning
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
