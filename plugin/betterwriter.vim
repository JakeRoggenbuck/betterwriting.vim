" betterwriter.vim - Offer suggestions in Vim for simple and effective writing
" Authors:      Jake Roggenbuck
" Version:      0.1.0
" License:      MIT

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
	autocmd BufEnter,BufReadPost * syntax match OrangeWord /\<\(something\|very\|really\|thing\|stuff\)\>/
  	autocmd ColorScheme * highlight OrangeWord cterm=undercurl gui=undercurl guisp=orange | syntax match OrangeWord /\<\(something\|very\|really\|thing\|stuff\)\>/
augroup END

highlight OrangeWord cterm=undercurl gui=undercurl guisp=orange
