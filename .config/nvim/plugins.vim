" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing
Plug 'scrooloose/nerdcommenter'         " Awesome Commenting
Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'ctrlpvim/ctrlp.vim'               " ctrlp fuzzy finder
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'tpope/vim-surround'               " Change your surroundings
Plug 'terryma/vim-multiple-cursors'     " Multiple cursors
Plug 'Yggdroot/indentLine'              " Indent guides
Plug 'easymotion/vim-easymotion'        " Navigate files with ease
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'                 " Snippets engine
Plug 'honza/vim-snippets'               " Snippets


" General coloscheme
Plug 'joshdick/onedark.vim'

" Bottom bar
Plug 'itchyny/lightline.vim'

" File exploration
Plug 'scrooloose/nerdtree'              " File tree view

" Linter
Plug 'neomake/neomake'                  " Syntax checking

" Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Keyword completion
Plug 'sebastianmarkow/deoplete-rust'    " Rust Completion
Plug 'zchee/deoplete-clang'             " C++/C/Objective-C autocompletion

call plug#end()

