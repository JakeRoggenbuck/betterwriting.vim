" betterwriter.vim - Offer suggestions in Vim for simple and effective writing
" Authors:		Jake Roggenbuck
" Version:		0.1.0
" License:		MIT

if exists('g:loaded_betterwriter_plugin') || &compatible || v:version < 700
	finish
endif

let g:loaded_betterwriter_plugin = 1

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

set termguicolors
syntax on

augroup HighlightWordOrange
	autocmd!
	" TODO: Make this dynamic from a list like g:overused_words = []
	autocmd BufEnter,BufReadPost * syntax match OrangeWord /\c\<\(something\|very\|really\|thing\|stuff\|been\)\>/
	autocmd ColorScheme * highlight OrangeWord cterm=undercurl gui=undercurl guisp=orange | syntax match OrangeWord /\c\<\(something\|very\|really\|thing\|stuff\|been)\>/
augroup END

highlight OrangeWord cterm=undercurl gui=undercurl guisp=orange

augroup HighlightWordBlue
	autocmd!
	" TODO: Make this dynamic from a list like g:weak_phrases = []
	autocmd BufEnter,BufReadPost * syntax match BlueWord /\c\<\(i think\|i believe\|i'd imagine\|i imagine\|can see that\|this shows that\)\>/
	autocmd ColorScheme * highlight BlueWord cterm=undercurl gui=undercurl guisp=orange | syntax match BlueWord /\c\<\(i think\|i believe\|i'd imagine\|i imagine\|can see that\|this shows that\)\>/
augroup END

highlight BlueWord cterm=undercurl gui=undercurl guisp=orange
