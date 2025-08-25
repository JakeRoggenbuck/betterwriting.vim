" betterwriter.vim - Offer suggestions in Vim for simple and effective writing
" Authors:			Jake Roggenbuck
" Version:			0.1.0
" License:			MIT

if exists('g:loaded_betterwriter_plugin') || &compatible || v:version < 700
	finish
endif

let g:loaded_betterwriter_plugin = 1

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

set termguicolors
syntax on

if !exists('g:overused_words')
	let g:overused_words = ['something', 'very', 'really', 'thing', 'stuff']
endif

function! s:BetterwriterApplyHighlight() abort
	syntax clear OrangeWord

	for word in g:overused_words
		execute 'syntax match OrangeWord /\c\<'
			\ . escape(word, '\')
			\ . '\>/'
	endfor

	highlight OrangeWord cterm=undercurl gui=undercurl guisp=orange
endfunction

augroup HighlightWordOrange
	autocmd!
	autocmd BufEnter,BufReadPost * call s:BetterwriterApplyHighlight()
	autocmd ColorScheme * call s:BetterwriterApplyHighlight()
augroup END
