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
  nmap <leader>f :CtrlPMRUFiles<cr>
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " Use silver searcher
  let g:ctrlp_working_path_mode = 0
"}}}

" Indent Line {{{
  let g:indentLine_char = '┆'
" }}}

" Neomake {{{
  nnoremap <leader>e :call LocationNext()<cr>

  function! LocationNext()
    try
      lnext
    catch
      try | lfirst | catch | endtry
    endtry
  endfunction

  autocmd! BufWritePost,BufEnter * Neomake
" }}}

" Deoplete {{{
  let g:deoplete#enable_at_startup = 1
  " Improve ultisnips and deoplete integration
 call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

  " C/C++ {{{
    let g:deoplete#sources#clang#libclang_path = "/usr/lib64/libclang.so"
    let g:deoplete#sources#clang#clang_header = '/usr/include/clang'
  " }}}

  " Rust {{{
  let g:deoplete#sources#rust#racer_binary='/home/alex/.cargo/bin/racer'
  let g:deoplete#sources#rust#rust_source_path='/usr/lib/rustlib/src'
  set completeopt -=preview
  " }}}
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
    autocmd BufReadPre,FileReadPre * :NERDTreeClose
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
  map <C-t> :NERDTreeToggle<CR>
  " }}}
" }}}

" LightLine {{{
  " General {{{
    let g:lightline = {
          \ 'colorscheme': 'onedark',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste'  ],
          \             [ 'gitbranch', 'neomake', 'readonly', 'filename', 'modified'  ] ]
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

  " Neomake status {{{
    function! NeomakeLightlineStatus()
        if !exists('*neomake#statusline#LoclistCounts')
            return ''
        endif

        " Count all the errors, warnings
        let total = 0

        for v in values(neomake#statusline#LoclistCounts())
            let total += v
        endfor

        for v in items(neomake#statusline#QflistCounts())
            let total += v
        endfor

        if total == 0
            return ''
        endif

        return 'line '.getloclist(0)[0].lnum. ', 1 of '.total
    endfunction
  " }}}
"}}}

" Devicons {{{
  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
" }}}

" TagBar {{{
  nmap <F8> :TagbarToggle<CR>
" }}}
