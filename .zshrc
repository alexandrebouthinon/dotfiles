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
    export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:/usr/bin/clangd:$HOME/.config/scripts:/opt:/usr/lib/go/bin:$GOPATH/bin:$HOME/.gem/ruby/2.5.0/bin:$PATH
    export ZSH=/home/alex/.oh-my-zsh

    if [ "$TERM" != "tmux-256color" ]; then
      export TERM=tmux-256color
    fi

    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
    export GOROOT=/usr/lib/go
    export GOPATH=/home/alex/.go
    export GOBIN=/home/alex/.go/bin
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
    export BROWSER='/usr/bin/chromium'
  # }}}

  # Aliases {{{
    alias zshconfig="vim ~/.zshrc"
    alias vi="nvim"
    alias vim="nvim"
    alias neofetch="clear && echo && echo && neofetch --ascii_distro linux --gtk2 off --gtk3 off --gap 1"
    alias tmux='tmux -2'
    alias la='colorls -lA --sd --gs'
    alias ls='colorls'
    alias lt='colorls --tree'
    alias ltg='colorls --tree --gs'
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

    # ColorLS autocomplete
    source $(dirname $(gem which colorls))/tab_complete.sh
  # }}}

  # GPG Keys {{{
    export GPG_TTY=$(tty)
  # }}}

# SSH Agent {{{
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent
  fi
  if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent)" > /dev/null
  fi
# }}}
# }}}

# added by travis gem
[ -f /home/alex/.travis/travis.sh ] && source /home/alex/.travis/travis.sh

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

