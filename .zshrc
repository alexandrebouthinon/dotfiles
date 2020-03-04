#==============================================================================
#
#                           ███████╗███████╗██╗  ██╗
#                           ╚══███╔╝██╔════╝██║  ██║
#                             ███╔╝ ███████╗███████║
#                            ███╔╝  ╚════██║██╔══██║
#                           ███████╗███████║██║  ██║
#                           ╚══════╝╚══════╝╚═╝  ╚═╝
#                        
# Description: ZSH configuration file
# Author: Alexandre Bouthinon
#==============================================================================

# Environment variables {{{
export PATH=$HOME/.local/bin:$HOME/.tfenv/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim

  # Node.js Version Manager setup {{{
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  # }}}

  # Golang setup {{{
  export GOPATH=$HOME/.go
  export GOBIN=$GOPATH/bin
  # }}}

# }}}

# Aliases {{{
alias zshconfig="vim $HOME/.zshrc"
alias ncmpcpp="ncmpcpp -b $HOME/.config/ncmpcpp/bindings"
alias ssh="TERM=xterm ssh"
alias vim="nvim"
alias vi="nvim"

# Dotfiles management aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias dotstatus="dotfiles status"
alias dotdiff="dotfiles diff"
alias dotadd="dotfiles add"
alias dotcommit="dotfiles commit"
alias dotpush="dotfiles push"
# }}}

# Theme {{{
ZSH_THEME="spaceship"

  # Theme options {{{
  SPACESHIP_PROMPT_ORDER=(
      user          # Username section
      dir           # Current directory section
      host          # Hostname section
      git           # Git section (git_branch + git_status)
      hg            # Mercurial section (hg_branch  + hg_status)
      package       # Package version
      node          # Node.js section
      golang        # Go section
      php           # PHP section
      rust          # Rust section
      docker        # Docker section
      aws           # Amazon Web Services section
      venv          # virtualenv section
      terraform     # Terraform workspace section
      line_sep      # Line break
      vi_mode       # Vi-mode indicator
      char          # Prompt character
  )
  SPACESHIP_RPROMPT_ORDER=(
      exec_time     # Execution time
      battery       # Battery level and status
      jobs          # Background jobs indicator
      exit_code     # Exit code section
      time          # Time stamps section
  )
  SPACESHIP_RUST_SYMBOL="🦀 "
  SPACESHIP_RUST_COLOR=yellow
  SPACESHIP_DIR_TRUNC=0
  SPACESHIP_TIME_SHOW=true
  SPACESHIP_PROMPT_ADD_NEWLINE=false
  SPACESHIP_PROMPT_SEPARATE_LINE=false
  SPACESHIP_EXIT_CODE_SHOW=true
  # }}}

  # Plugins {{{
  plugins=(
    git                       # Git prompt info
    docker                    # Docker and Docker Compose autocomplete
    zsh-syntax-highlighting   # Fish-like syntax highlight
  )
  # }}}
# }}}

source $ZSH/oh-my-zsh.sh

# Start X server on TTY succeeded login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

# Run pfetch on each new zsh session
pfetch

# vim:fileencoding=utf-8:ft=sh:foldmethod=marker
