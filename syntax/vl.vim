" Vim syntax file
" Language: VL
" Maintainer:   Ben Brunton <benbrunton@hotmail.com>
" Last Change:  May 30th, 2016

if exists("b:current_syntax")
    finish
endif

syn match vlAddress /['`]\w/
syn region vlComment    start=/\$/  end=/\$/
syn region vlString matchgroup=Keyword start="i"    skip=/\\;/  end=";"

syn match vlIO /[wWlLe]/
syn match vlRegManip /[yYpPvVax]/
syn match vlCond /[\?!<>]/
syn match vlJump /[jk]/
syn match vlJumpf /[fF]./
syn match vlNum /[0-9]/

hi def link vlComment   Comment
hi def link vlJump      PreProc
hi def link vlJumpf      PreProc
hi def link vlString    String
hi def link vlAddress   StorageClass
hi def link vlIO        Special
hi def link vlRegManip  Function
hi def link vlCond      Conditional
hi def link vlNum       Constant

let b:current_syntax = "VL"
