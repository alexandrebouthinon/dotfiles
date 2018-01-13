
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
    " Inteface {{{
    au BufReadPost,BufNewFile *.py :TagbarOpen
    au BufReadPost,BufNewFile *.py :NERDTreeMirror
    " }}}

    " Tests {{{
      " School Annual Project {{{
        if getcwd() == "/home/alex/Documents/Backgammon/Backgammon"
          augroup test
            autocmd BufWrite *.py silent !pkill TDD-python
            autocmd BufWrite *.py silent !tmux send-keys -t "0.1" "PYTHONPATH=src/lib TDD-python pytest ./tests/*.py" ENTER
          augroup END
        endif
      " }}}
    " }}}
  " }}}
" }}}
