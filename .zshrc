# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# ZSH_THEME="random"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man command-not-found nyan lol dirhistory sudo web-search wd)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export TERM="xterm-256color"

alias sup="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade"
alias smh="ssh andrew.stanton@sotonfs.soton.smoothwall.net"
alias bz="cp ~/.zshrc ~/Downloads/workConfig/ && cd ~/Downloads/workConfig && git add .zshrc && git commit && git push && echo $? && clear && echo '.zshrc backup complete'"
alias bv="cd ~/Downloads/workConfig && ./backup.sh && git add .vimrc && git commit && git push && echo $? && clear && echo '.vimrc backup complete' "
alias asf="libreoffice /media/andrew/TI31061100A/Users/Andrew/Dropbox/_ASF.ods &"

alias ta="~/ta.zsh"
# alias ta='tmux attach \; choose-tree'

soton() {
    scp "$1" "andrew.stanton@sotonfs:"
}

cpf() {
    cp "$1" -t "$2"
    cd "$2"
}


if [ -f ~/.bash_smoothwall ]; then
    . ~/.bash_smoothwall
fi
export PATH=~/.rakudobrew/bin:$PATH
