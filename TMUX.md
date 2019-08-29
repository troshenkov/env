--- Session Management

```sh
tmux new -s session_name# creates a new  tmux session named session_name
tmux attach -t session_name# attaches    to an existing tmux session named session_name
tmux switch -t session_name# switches to an existing session named session_name
tmux list-sessio    ns# lists existing tmux sessions
tmux detach (prefix + d)# detach th         e currently attached session
```

--- Windows

```sh
tmux new-window (prefix + Copyright © 2019 Me. All Rights Reserved.# create a new window
tmux select-window -t :0-9 (prefix + 0-9)# mo       ve to the window based on index
tmux rename-window (prefix + ,)# ren            ame the current window
```

--- Commands

```
bind-key        C-o rotate-window                                                                                                                                                                           [16/16]
bind-key        C-z suspend-client
bind-key      Space next-layout
bind-key          ! break-pane
bind-key          # split-window -h ; split-window -v ; split-window -v ; select-pane -t 0 ; split-window -v ; split-window -v ; select-pane -t 0
bind-key          $ command-prompt -I #S "rename-session '%%'"
bind-key          & confirm-before -p "kill-window #W? (y/n)" kill-window
bind-key          ' command-prompt -p index "select-window -t ':%%'"
bind-key          ( switch-client -p
bind-key          ) switch-client -n
bind-key          , command-prompt -I #W "rename-window '%%'"
bind-key          - split-window -v
bind-key          . command-prompt "move-window -t '%%'"
bind-key          0 select-window -t :0
bind-key          1 select-window -t :1
bind-key          2 select-window -t :2
bind-key          3 select-window -t :3
bind-key          4 select-window -t :4
bind-key          5 select-window -t :5
bind-key          6 select-window -t :6
bind-key          7 select-window -t :7
bind-key          8 select-window -t :8
bind-key          9 select-window -t :9
bind-key          : command-prompt
bind-key          ; last-pane
bind-key          = choose-buffer
bind-key          ? list-keys
bind-key          D choose-client
bind-key          L switch-client -l
bind-key          M set-window-option -g mode-mouse off ; set-option -g mouse-resize-pane off ; set-option -g mouse-select-pane off ; set-option -g mouse-select-window off ; display-message "Mouse: OFF"
bind-key          [ copy-mode
bind-key          ] paste-buffer
bind-key          a send-prefix
bind-key          c command-prompt -p "Name of new window: " "new-window -n '%%'"
bind-key          d detach-client
bind-key          f command-prompt "find-window '%%'"
bind-key          i display-message
bind-key          l last-window
bind-key          m set-window-option -g mode-mouse on ; set-option -g mouse-resize-pane on ; set-option -g mouse-select-pane on ; set-option -g mouse-select-window off ; display-message "Mouse: ON"
bind-key          n next-window
bind-key          o select-pane -t :.+
bind-key          p previous-window
bind-key          q display-panes
bind-key          r source-file /users/dtroshen/.tmux.conf ; display-message "Config reloaded..."
bind-key          s choose-tree
bind-key          t clock-mode
bind-key          w choose-window
bind-key          x confirm-before -p "kill-pane #P? (y/n)" kill-pane
bind-key          z resize-pane -Z
bind-key          { swap-pane -U
bind-key          | split-window -h
bind-key          } swap-pane -D
bind-key          ~ show-messages
bind-key      PPage copy-mode -u
bind-key -r      Up select-pane -U
bind-key -r    Down select-pane -D
bind-key -r    Left select-pane -L
bind-key -r   Right select-pane -R
bind-key        M-1 select-layout even-horizontal
bind-key        M-2 select-layout even-vertical
bind-key        M-3 select-layout main-horizontal
bind-key        M-4 select-layout main-vertical
bind-key        M-5 select-layout tiled
bind-key        M-n next-window -a
bind-key        M-o rotate-window -D
bind-key        M-p previous-window -a
bind-key -r    M-Up resize-pane -U 5
bind-key -r  M-Down resize-pane -D 5
bind-key -r  M-Left resize-pane -L 5
bind-key -r M-Right resize-pane -R 5
bind-key -r    C-Up resize-pane -U
bind-key -r  C-Down resize-pane -D
bind-key -r  C-Left resize-pane -L
bind-key -r C-Right resize-pane -R
```

--- Select/copy/paste

```
Enter copy mode: <prefix>+[
Start copy: <Space>
Copy text: <Enter>
Paste text: <prefix>+]
```
--- Select text by a mouse

```
Mouse OFF
Right_Alt
```

