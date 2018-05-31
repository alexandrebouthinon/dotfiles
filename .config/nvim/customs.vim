
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
"                               -----------------------------
"                               | Custom configuration file |
"                               -----------------------------
"

" Custom IDEs {{{
  " Python {{{
    au BufReadPost,BufNewFile *.py :TagbarOpen
    au BufReadPost,BufNewFile *.py :NERDTreeMirror

    if isdirectory(getcwd() . "/tests")
      augroup test
        autocmd BufWrite *.py silent !pkill TDD-python
        autocmd BufWrite *.py silent !tmux send-keys -t "0.1" "TDD-python pytest tests/*.py" ENTER
      augroup END
    endif
  " }}}

  " Golang {{{
    au BufReadPost,BufNewFile *.go :GoMetaLinter
    au BufReadPost,BufNewFile *.go :TagbarOpen
    au BufReadPost,BufNewFile *.go :NERDTree

    nmap <C-c> :GoCoverageToggle<cr>

    autocmd BufWrite *.go :GoTest

    let g:go_textobj_include_function_doc = 1
    let g:go_fmt_command = "goimports"

    let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_structs = 1
  " }}}
" }}}
