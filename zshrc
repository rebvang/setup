PS1='%B%F{green}%1~%f %F{blue}>%f%F{cyan}>%f%F{red}>%f%b '

source ~/.shfuncs
eval "$(rbenv init -)"

# Current terminal background colour : 11;rgb:13f8/5391/2c50 ( printf '\033]11;?\007' )
# echo -ne '\e]11;#13f853912c50\e\\' # current terminal background colour

alias nz='nano ~/.zshrc'
alias cz='code ~/.zshrc'
alias sz='source ~/.zshrc'
alias vz='source ~/.zshrc'
alias timer='echo missing path'
alias python=python3
alias p=python3.14
alias pip='python3.14 -m pip'
alias c='code $PWD'
alias n=nano
alias v=vim
alias tm="$HOME/tmux-start.sh"
# alias close="osascript -e 'tell application \"Terminal\" to close first window' & exit"
alias close="osascript -e 'tell application \"Terminal\" to close front window'"

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
    "$HOME/tmux-start.sh"
    ns
}

start

# blinking_lights2 & clear_line

# If launched via our vim wrapper:
if [[ -n "$LAUNCH_VIM" ]]; then
    # Change to the target directory passed from the parent shell
    [[ -n "$TARGET_PWD" ]] && cd "$TARGET_PWD"
    
    # Launch vim with any passed arguments, then exit the window when vim quits
    /usr/bin/vim $=VIM_ARGS
    unset LAUNCH_VIM
fi


