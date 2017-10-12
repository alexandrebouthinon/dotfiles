""" ruby config
let ruby_operators = 1


""" editorconfig
let g:EditorConfig_core_mode = 'external_command'


""" ctrlp config
let g:ctrlp_map = '<leader>t'
" Use <leader>f to open MRU files
nmap <leader>f :CtrlPMRUFiles<cr>
" Ignores should be handled by .agignore
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " Use silver searcher
let g:ctrlp_working_path_mode = 0

""" Indent guides
let g:indentLine_char = ''

let g:lightline = {
      \ 'colorscheme': 'base15-tomorrow',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'  ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'  ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filetype': 'MyFiletype'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ }



function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
