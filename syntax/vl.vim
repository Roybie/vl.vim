" Vim syntax file
" Language:	VL
" Maintainer:	Ben Brunton <benbrunton@hotmail.com>
" Last Change:	May 30th, 2016

if exists("b:current_syntax")
	finish
endif

syn match vlAddress	/['`]\w/
syn region vlComment	start=/\$/	skip=/\\\$/	end=/\$/
syn region vlString	matchgroup=Keyword start="i"	skip=/\\;/	end=";"

hi def link vlComment   Comment
hi def link vlString	String
hi def link vlAddress	StorageClass

let b:current_syntax = "VL"
