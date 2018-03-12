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
"                                -------------------------
"                                | Plugins configuration |
"                                -------------------------


" Editorconfig {{{
  let g:EditorConfig_core_mode = 'external_command'
" }}}

" CTRLP {{{
  let g:ctrlp_map = '<leader>t'
  nmap <C-f> :CtrlPMRUFiles<cr>
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " Use silver searcher
  let g:ctrlp_working_path_mode = 0
"}}}

" Indent Line {{{
  let g:indentLine_char = '┆'
" }}}

" NERDCommenter {{{
  " Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1
  " Use compact syntax for prettified multi-line comments
  let g:NERDCompactSexyComs = 1
  " Allow commenting and inverting empty lines (useful when commenting a region)
  let g:NERDCommentEmptyLines = 1
" }}}

" NERDTree {{{
  " General {{{
    let NERDTreeIgnore = ['node_modules', 'tmp', 'bower_components']
    " Don't want to see the extra text
    let NERDTreeMinimalUI = 1
    " Close NERDTree after reading file
    map <silent> <leader>n :NERDTreeToggle<CR>
    " Get colors from color scheme
    let s:colors = onedark#GetColors()
  " }}}

  " File highlighting {{{
  function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
   exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
   exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction
  call NERDTreeHighlightFile('md', 'blue', 'none', s:colors.blue.gui, 'none')
  call NERDTreeHighlightFile('yml', 'magenta', 'none', s:colors.purple.gui, 'none')
  call NERDTreeHighlightFile('json', 'yellow', 'none', s:colors.yellow.gui, 'none')
  call NERDTreeHighlightFile('html', 'blue', 'none', s:colors.blue.gui, 'none')
  call NERDTreeHighlightFile('css', 'cyan', 'none', s:colors.cyan.gui, 'none')
  call NERDTreeHighlightFile('scss', 'cyan', 'none', s:colors.cyan.gui, 'none')
  call NERDTreeHighlightFile('coffee', 'yellow', 'none', s:colors.dark_yellow.gui, 'none')
  call NERDTreeHighlightFile('js', 'yellow', 'none', s:colors.yellow.gui, 'none')
  call NERDTreeHighlightFile('rb', 'red', 'none', s:colors.red.gui, 'none')
  " }}}

  " Keymap {{{
  map <F7> :NERDTreeToggle<CR>
  " }}}
" }}}

" LightLine {{{
  " General {{{
    let g:lightline = {
          \ 'colorscheme': 'onedark',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste'  ],
          \             [ 'gitbranch', 'readonly', 'filename', 'modified'  ] ]
          \ },
          \ 'component_function': {
          \   'gitbranch': 'fugitive#head',
          \   'neomake': 'Neomakelightline',
          \   'filetype': 'MyFiletype'
          \ },
          \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
          \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
          \ }
  " }}}
"}}}

" Devicons {{{
  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
" }}}
