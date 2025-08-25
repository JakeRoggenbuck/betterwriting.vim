" betterwriter.vim - Offer suggestions in Vim for simple and effective writing
" Authors:      Jake Roggenbuck
" Version:      0.1.0
" License:      MIT

if exists('g:loaded_betterwriter_plugin') || &compatible || v:version < 700
	finish
endif

let g:loaded_betterwriter_plugin = 1

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

highlight HightlightWordOrange cterm=undercurl gui=undercurl guisp=orange

" TODO: Make this dynamic based on a variable
syntax match HightlightWordOrange /\<something\>/
syntax match HightlightWordOrange /\<very\>/
syntax match HightlightWordOrange /\<really\>/
syntax match HightlightWordOrange /\<thing\>/
syntax match HightlightWordOrange /\<stuff\>/
