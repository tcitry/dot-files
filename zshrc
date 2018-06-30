# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/golang
export GVM_ROOT=$HOME/.gvm
export PATH=$PATH:$GVM_ROOT/bin
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com
export "CFLAGS=-I/usr/local/include -L/usr/local/lib"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="awesomepanda"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
plugins=(git docker docker-compose git-flow web-search colored-man-pages zsh-autosuggestions cd-gitroot)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
# export LANG=zh_CN.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=$HOME/mongodb/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=/usr/local/php5/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
alias tmux='tmux -2'
alias vi=vim
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias act='. ../bin/activate'
alias 'cd..'='cd ..'
alias cdr='cd-gitroot'
alias o='open .'
alias py='python'
alias py2='python2'
alias py3='python3'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
alias s="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias my='mycli -uroot -p123456'
alias code='cd /Users/yindongliang/Desktop/code'
alias github='cd /Users/yindongliang/Desktop/github'
source ~/.bashrc


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

proxy=http://127.0.0.1:6152
export http_proxy=$proxy
export https_proxy=$proxy
export ftp_proxy=$proxy

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

