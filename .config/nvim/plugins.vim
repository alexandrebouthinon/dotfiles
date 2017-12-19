" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

" Vim home page
Plug 'mhinz/vim-startify'

" General coloscheme
Plug 'joshdick/onedark.vim'

" Some sensible settings
Plug 'tpope/vim-sensible'

" Autodetect file spacing
Plug 'tpope/vim-sleuth'

" Awesome Commenting
Plug 'scrooloose/nerdcommenter'

" Handle swap files intelligently
Plug 'vim-scripts/autoswap.vim'

" Mega language support pack
Plug 'sheerun/vim-polyglot'

" Git wrapper
Plug 'tpope/vim-fugitive'

" ctrlp fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" .editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Change your surroundings
Plug 'tpope/vim-surround'

" Indent guides
Plug 'Yggdroot/indentLine'

" Snippets engine
Plug 'SirVer/ultisnips'

" Snippets
Plug 'honza/vim-snippets'

" Bottom bar
Plug 'itchyny/lightline.vim'

" File exploration
Plug 'scrooloose/nerdtree'              " File tree view

" Add file type icons in lightline
Plug 'ryanoasis/vim-devicons'

" Linter
Plug 'neomake/neomake'                  " Syntax checking

" Deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Keyword completion
Plug 'sebastianmarkow/deoplete-rust'    " Rust Completion
Plug 'zchee/deoplete-clang'             " C++/C/Objective-C autocompletion

call plug#end()

