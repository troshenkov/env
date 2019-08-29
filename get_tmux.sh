#!/bin/bash

SESSION_NAME="dtroshen"

tmux attach -t $SESSION_NAME || tmux new -s $SESSION_NAME \
	     -n Win_0 \; \
	neww -n Win_1 \; \
	neww -n Win_2 \; \
    selectw -t 1
