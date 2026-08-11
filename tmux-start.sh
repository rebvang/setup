#!/bin/zsh

if [[ -n $TMUX ]]; then
	exit 0
fi

SESSION="$$"

if tmux has-session -t "$SESSION"; then
	echo "Tried to start a session that already exists: Session = $SESSION"
	exit 1
fi

unset LAUNCH_VIM

# Upper left
tmux new-session -d -s $SESSION # "exec zsh"

# Upper right
tmux split-window -h -t $SESSION "bat --terminal-width=64 $HOME/expl/vim.md; set_CF_colours; exec zsh"

# Bottom left
tmux split-window -v -t $SESSION:0.0 "exec zsh"

# Bottom right
# tmux split-window -v -t $SESSION:0.2 # "exec zsh"

# Open on screen
tmux attach-session -t $SESSION