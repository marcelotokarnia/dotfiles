set fish_emoji_width 2

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

set -x -g GOPATH $HOME/go
set -x -g GO111MODULE on
set -x -g FLYCTL_INSTALL $HOME/.fly
set -x -g PATH $FLYCTL_INSTALL/bin $PATH

set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -x -g TERM "xterm-256color"

eval "$(/opt/homebrew/bin/brew shellenv)"

set -x -g LC_ALL en_GB.UTF-8
set -x -g LANG en_GB.UTF-8

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set -x -g PATH /Users/mtok/Library/Python/3.7/bin $PATH

alias ...="cd ../.."
direnv hook fish | source

set -gx PATH /Users/mtok/.fnm/current/bin $PATH
set -gx PATH /Users/mtok/go/bin $PATH

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH
set -gx FNM_MULTISHELL_PATH /Users/mtok/.fnm/current;
set -gx FNM_DIR /Users/mtok/.fnm;
set -gx FNM_NODE_DIST_MIRROR https://nodejs.org/dist
set -gx FNM_LOGLEVEL info
set -x DENO_INSTALL /Users/mtok/.deno
set -x PATH $DENO_INSTALL/bin $PATH
set -x PKG_CONFIG_PATH /usr/local/opt/openssl@1.1/lib/pkgconfig/


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
