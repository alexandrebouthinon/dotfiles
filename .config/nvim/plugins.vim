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
"                                   --------------------
"                                   | List all plugins |
"                                   --------------------
"

call plug#begin()

" General {{{
  Plug 'mhinz/vim-startify'               " Vim home page
  Plug 'tpope/vim-sensible'               " Some sensible settings
  Plug 'tpope/vim-sleuth'                 " Autodetect file spacing
  Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
  Plug 'sheerun/vim-polyglot'             " Mega language support pack
  Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
  Plug 'Yggdroot/indentLine'              " Indent guides
" }}}

" Code Format {{{
  Plug 'scrooloose/nerdcommenter'         " Awesome Commenting
  Plug 'tpope/vim-surround'               " Change your surroundings
" }}}

" Colors & Icons {{{
  Plug 'joshdick/onedark.vim'             " General coloscheme
  Plug 'ryanoasis/vim-devicons'           " Add file type icons in lightline
" }}}

" VCS {{{
  Plug 'tpope/vim-fugitive'               " Git wrapper
  Plug 'airblade/vim-gitgutter'           " Git overview and merge tool
" }}}

" Snippets {{{
  Plug 'SirVer/ultisnips'                 " Snippets engine
  Plug 'honza/vim-snippets'               " Snippets
" }}}

" Info Bar {{{
  Plug 'itchyny/lightline.vim'            " Bottom bar
" }}}

" File exploration {{{
  Plug 'scrooloose/nerdtree'              " File tree view
  Plug 'ctrlpvim/ctrlp.vim'               " ctrlp fuzzy finder
" }}}

" Linter(s) {{{
  Plug 'neomake/neomake'                  " Syntax checking
" }}}

" Autocompletion {{{
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Keyword completion
  Plug 'zchee/deoplete-clang'             " C++/C/Objective-C autocompletion
  Plug 'zchee/deoplete-go'
" }}}

" Outline Viewer {{{
  Plug 'majutsushi/tagbar' " Class outline
" }}}

" Language Specifics {{{
  Plug 'fatih/vim-go'
" }}}

call plug#end()

