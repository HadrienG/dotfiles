# coreutils (brew)
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# rust (rustup)
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# node/nvm (nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# conda
source /Users/hadrien/.conda/etc/profile.d/conda.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]
    then . '/opt/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]
    then . '/opt/google-cloud-sdk/completion.bash.inc'
fi


# set colours
export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLORS=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# text editor
export EDITOR=/usr/bin/vi

# better bash history
shopt -s histappend
shopt -s cmdhist
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoredups
export HISTIGNORE='ls:bg:fg:history:ll:..:f'

# aliases
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ls="ls --color -GFh"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias ..="cd .."
alias ...="cd ../.."

# open current directory in finder
alias f="open -a Finder ./"

# quick look
ql () { command qlmanage -p "$@" >& /dev/null ; }

# move a file to the macos trash
trash () { command mv "$@" ~/.Trash ; }

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
