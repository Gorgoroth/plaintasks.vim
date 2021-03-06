" syntax/plaintasks.vim - Vim syntax file for PlainTasks syntax
" Language: PlainTasks
" Maintainer: David Elentok
" Filenames: *.todo
"
if exists("b:current_syntax")
  finish
endif

hi def link ptTask Function
hi def link ptCompleteTask Comment
hi def link ptSection Statement
hi def link ptContext Question
hi def link ptLine Function

syn match ptSection "^.*: *$"
syn match ptTask "^ *☐.*" contains=ptContext
syn match ptCompleteTask "^ *✔.*" contains=ptContext
syn match ptContext "@[^ ]*"
syn match ptLine "^----*"
