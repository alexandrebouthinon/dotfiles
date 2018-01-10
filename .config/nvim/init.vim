"                                            ..
"                                          .::::.
"                             ___________ :;;;;:`____________
"                             \_________/ ?????L \__________/
"                               |.....| ????????> :.......'
"                               |:::::| $$$$$$"`.:::::::' ,
"                              ,|:::::| $$$$"`.:::::::' .OOS.
"                            ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.
"                          .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.
"                           'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`
"                             'D|IIIIII7IIIII7' .DDDDDDDDNNNF`
"                               |EEEEEEEEEE7' .DDDDDDDNNNNF`
"                               |EEEEEEEEZ' .DDDDDDDDNNNF`
"                               |888888Z' .DDDDDDDDNNNF`
"                               |8888Z' ,DDDDDDDNNNNF`
"                               |88Z'    'DNNNNNNN"
"                               '"'        'MMMM"
"                                            '"
"
"                               ---------------------------
"                               | Main configuration file |
"                               ---------------------------
"

" VimPlug Init {{{
  " Install VimPlug if not present
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif
" }}}

" Plugins import {{{
  source $HOME/.config/nvim/plugins.vim
" }}}

" Theme and Colors {{{
  " Colors compatibility {{{
    if (has("nvim"))
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
      set termguicolors
    endif
  " }}}

  " Colors setup {{{
    let g:onedark_color_overrides = {
    \ "black": {"gui": "#1D1F21", "cterm": "235", "cterm16": "0" }
    \}
    let base16colorspace=256
    colorscheme onedark
  " }}}
" }}}

" Editor Options {{{
  " General {{{
    set mouse=a
    set cursorline                  " Highlight the current line
    set lazyredraw                  " Faster scrolling
    set number                      " Show line number
    set relativenumber              " Show relative line number
    set showcmd                     " Show current command
    set showmode                    " Show current mode
    set wildmode=longest:list,full  " Autocomplete
    set wildignore=*.o,*.obj,*~     " Ignore file
    set showmatch                   " highlight matching braces
    set hlsearch                    " Highlight search
    set ignorecase                  " ignore case while searching
    set smartcase                   " unless uppercase explicitly mentioned
    set smartindent                 " indent smartly
    set nowrap                      " Don't wrap text
    set laststatus=2                " Always show statusbar
    set scrolloff=5                 " Minimum space on bottom/top of window
    set sidescrolloff=7             " Minimum space on side
    set sidescroll=1
    set list                        " Display hidden chars as defined below
    set listchars=tab:▷⋅,trail:⋅,nbsp:+,extends:»,precedes:«
    set splitright                  " Open vsp on right
    set pastetoggle=<F2>
    set noshowmode                  " Hide mode (lightline shows mode)
    set expandtab                   " Spaces > tabs
    set tabstop=2                   " 2 spaces
    set shiftwidth=2                " 2 2 CHAINZ
    set foldmethod=marker           " Enable marker based folding
    set clipboard+=unnamedplus      " Use system clipboard
    set regexpengine=1 " Use old regexp engine
    set ff=unix
  " }}}

  " Undo settings {{{
    set undodir=~/.vim-undo
    set undofile
    set undolevels=1000  "max number of changes that can be undone
    set undoreload=10000 "max number lines to save for undo on buffer reload
  " }}}

  " Cleaning on Save {{{
    autocmd BufWritePre * call TrimWhitespace() " Remove trailing whitespace when saving
    autocmd! BufReadPost * call SetCursorPosition()
  " }}}

  " Useful Functions {{{
    " Trims trailing whitespace
    function! TrimWhitespace()
      let l:save = winsaveview()
      %s/\s\+$//e
      call winrestview(l:save)
    endfunction

    " Function to set cursor postion
    function! SetCursorPosition()
      " dont do it when writing a commit log entry
      if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
          exe "normal! g`\""
          normal! zz
        endif
      else
        call cursor(1,1)
      endif
    endfunction
  " }}}
" }}}

" Markdown Settings {{{
  autocmd! filetype *commit*,markdown setlocal spell         " Spell Check
  autocmd! filetype *commit*,markdown setlocal textwidth=72  " Looks good
  autocmd! filetype make setlocal noexpandtab                " In Makefiles DO NOT use spaces instead of tabs
" }}}

" Keybinds {{{
  " Leader Mapping {{{
    let mapleader="," " Change <leader> to ,
  " }}}

  " Line Manipulation {{{
    noremap - ddp
    noremap _ ddkP
  " }}}

  " Sudo Writing {{{
    cnoremap w!! w !sudo tee > /dev/null %
  " }}}

  " Panes Navigation {{{
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l
  " }}}

  " Mode Switching {{{
    nnoremap <C-space> i
    imap <C-space> <Esc>
  " }}}
" }}}

" Plugins Configuration {{{
  source $HOME/.config/nvim/plugin-config.vim
" }}}
