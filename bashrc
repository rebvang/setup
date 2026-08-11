export PS1='\[\e[1;32m\]\W\[\e[0m\] \[\e[34m\]>\[\e[36m\]>\[\e[31m\]>\[\e[0m\] '

source ~/.shfuncs

alias nz='nano ~/.bashrc'
alias cz='code ~/.bashrc'
alias sz='source ~/.bashrc'
alias vz='source ~/.bashrc'
alias timer='echo missing path'
alias python=python3
alias p=python3.14
alias pip='python3.14 -m pip'
alias c='code $PWD'
alias n=nano
alias v=vim
alias tm="$HOME/tmux-start.sh"

export PATH="$HOME/Library/Python/3.14/bin:$PATH"
export PYTHONPATH="/Users/xxx/pylibs:$PYTHONPATH"

# Not allowed to run them if you don't say "please"
#alias ls='be_polite'
#alias cp='be_polite'
#alias mv='be_polite'
#alias rm='be_polite'
alias clear='be_polite'
alias thank='thank_you'

start() {
    echo -ne "\e[8;60;130t"
    clear_line
}

# start

# If launched via our vim wrapper:
if [[ -n "$LAUNCH_VIM" ]]; then
    # Change to the target directory passed from the parent shell
    [[ -n "$TARGET_PWD" ]] && cd "$TARGET_PWD"
    
    # Launch vim with any passed arguments, then exit the window when vim quits
    /usr/bin/vim $=VIM_ARGS
    unset LAUNCH_VIM
fi
