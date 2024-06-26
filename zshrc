export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home"
# export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/openjdk-15.0.1/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/mongodb/bin:$PATH
export PATH=/usr/local/php5/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export GIT_TERMINAL_PROMPT=1
export GOROOT="$HOME/go/go1.20.2"
export GOPATH="$GOROOT/bin"
export GO111MODULE=auto
export GOPROXY=https://goproxy.cn
export GONOPROXY="*.luojilab.com"
export GOPRIVATE="*.luojilab.com"
export PATH="$GOPATH:$GONOPROXY:$GOPRIVATE:$GOPATH/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/14/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"
# export CFLAGS="-I/usr/local/include -L/usr/local/lib"

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
plugins=(git web-search colored-man-pages cd-gitroot zsh-autosuggestions autojump docker)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
alias a='. venv/bin/activate'
alias 'cd..'='cd ..'
alias cdr='cd-gitroot'
alias o='open .'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
alias s="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias merge="/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge"
alias c="~/.cargo/bin/cargo"
alias p=pip
alias py=pyhton3
alias i=ipython
alias lg='lazygit'
alias d=docker
alias de=deactivate
alias k=kubectl
alias gg=gitup
alias f=fuck
alias ts=ts-node
alias my="mycli -uroot -h localhost"
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
alias x="sudo xattr -r -d com.apple.quarantine"
alias gf=gf
alias pn=pnpm
alias n=npm

unsetopt AUTO_CD

function stop_proxy(){
    unset all_proxy
    echo -e "已关闭代理"
}
function start_proxy() {
	export all_proxy='socks5://127.0.0.1:1086'
    echo -e "已开启代理"
}
function start_clash() {
	export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890
    echo -e "已开启clash代理"
}
function start_surge() {
	export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152;export all_proxy=socks5://127.0.0.1:6153
    echo -e "已开启surge代理"
}
function start_ss() {
	export https_proxy=http://127.0.0.1:1087;export http_proxy=http://127.0.0.1:1087;export all_proxy=socks5://127.0.0.1:1086
    echo -e "已开启ss代理"
}

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yindongliang/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yindongliang/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yindongliang/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yindongliang/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


eval $(thefuck --alias)

[[ -d $PYENV_ROOT/bin ]] || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"
