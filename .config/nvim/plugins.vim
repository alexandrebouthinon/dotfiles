" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

Plug 'mhinz/vim-startify'               " Vim home page
Plug 'joshdick/onedark.vim'             " General coloscheme
Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing
Plug 'scrooloose/nerdcommenter'         " Awesome Commenting
Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'ctrlpvim/ctrlp.vim'               " ctrlp fuzzy finder
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'tpope/vim-surround'               " Change your surroundings
Plug 'Yggdroot/indentLine'              " Indent guides
Plug 'SirVer/ultisnips'                 " Snippets engine
Plug 'honza/vim-snippets'               " Snippets
Plug 'itchyny/lightline.vim'            " Bottom bar
Plug 'scrooloose/nerdtree'              " File tree view
Plug 'ryanoasis/vim-devicons'           " Add file type icons in lightline
Plug 'neomake/neomake'                  " Syntax checking

" Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Keyword completion
Plug 'sebastianmarkow/deoplete-rust'    " Rust Completion
Plug 'zchee/deoplete-clang'             " C++/C/Objective-C autocompletion

call plug#end()

