#
#             _________  _   _
#            |__  / ___|| | | |
#              / /\___ \| |_| |
#             / /_ ___) |  _  |
#            /____|____/|_| |_|
#
#        ____ ___  _   _ _____ ___ ____
#       / ___/ _ \| \ | |  ___|_ _/ ___|
#      | |  | | | |  \| | |_   | | |  _
#      | |__| |_| | |\  |  _|  | | |_| |
#       \____\___/|_| \_|_|   |___\____|
#
#

# Environment Variables {{{
  # User Space {{{
    export PATH=$HOME/bin:/usr/local/bin:$HOME/.cargo/bin:/usr/bin/clangd:$HOME/.config/scripts:/opt:/usr/lib/go/bin:$PATH
    export ZSH=/home/alex/.oh-my-zsh

    if [ "$TERM" != "tmux-256color" ]; then
      export TERM=tmux-256color
    fi

    export GOROOT=/usr/lib/go
    export GOPATH=/home/alex/.go
  # }}}

# }}}

# Theme / Plugins {{{

  # Theme {{{
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir_writable dir vcs newline)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
    POWERLEVEL9K_MODE='nerdfont-complete'
    ZSH_THEME="powerlevel9k/powerlevel9k"
  # }}}

  # Plugins {{{
    plugins=(git zsh-syntax-highlighting)
  # }}}

  source $ZSH/oh-my-zsh.sh
# }}}

# User configuration {{{
  # Default Applications {{{
    export EDITOR='nvim'
    export BROWSER='/usr/bin/firefox'
  # }}}

  # Aliases {{{
    alias zshconfig="vim ~/.zshrc"
    alias vi="nvim"
    alias vim="nvim"
    alias neofetch="clear && echo && echo && neofetch --ascii_distro linux --gtk2 off --gtk3 off --gap 1"
    alias tmux='tmux -2'
  # }}}

  # Scripts {{{
    # Add transfer.sh script
    transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
    \ tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile;
    }

    # Run X automatically on login
    if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
      exec startx
    fi
  # }}}

  # GPG Keys {{{
    export GPG_TTY=$(tty)
  # }}}
# }}}
