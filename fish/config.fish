set fish_emoji_width 2

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -x -g TERM "xterm-256color"

set -x -g LC_ALL en_GB.UTF-8
set -x -g LANG en_GB.UTF-8

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH

alias ...="cd ../.."

# Colors
set -U fish_color_match normal
set -U fish_color_selection c0c0c0
set -U fish_color_search_match ffff00
set -U fish_color_history_current normal
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd 008000
set -U fish_color_cwd_root 800000
set -U fish_color_valid_path normal
set -U fish_color_autosuggestion 555
set -U fish_color_user 00ff00
set -U fish_color_host normal
set -U fish_color_cancel normal
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_color_normal normal
set -U fish_color_command 00ffff
set -U fish_color_quote 999900
set -U fish_color_redirection 00afff
set -U fish_color_end 009900
set -U fish_color_error ff0000
set -U fish_color_param 00afaf
set -U fish_color_comment 990000
