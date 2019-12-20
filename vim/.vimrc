"        _
" __   _(_)_ __ ___  _ __ ___  
" \ \ / / | '_ ` _ \| '__/ __| 
"  \ V /| | | | | | | | | (__  
" (_)_/ |_|_| |_| |_|_|  \___| 
"

" basic stuffs
	set nocompatible
	filetype off
	syntax on
	set encoding=utf-8
	set number relativenumber
	set tabstop=2
	set shiftwidth=2
	set backspace=2

" autocompletion 
	set wildmode=longest,list,full
	set wildmenu

" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vimwiki/vimwiki'
	Plugin 'tpope/vim-surround'
	Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
	Plugin 'xuhdev/vim-latex-live-preview'

	call vundle#end()

	filetype plugin on

" vimwiki
	let wiki = {}
	let wiki.path = '~/.vimwiki/main/'
	let wiki.syntax = 'markdown'
	let wiki.ext = 'md'
	let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

	let g:vimwiki_list = [wiki]

" instant markdown preview
	let g:instant_markdown_autostart = 0

" live latex preview
	let g:livepreview_previewer = 'zathura'

" hex editing

	" bind command for calling hex mode function
	command -bar Hexmode call ToggleHex()

	" hex editing toggle function
	function ToggleHex()
		if !exists("b:editingHex") || !b:editingHex
			" set status
			let b:editingHex=1
			" switch to hex editor
			%!xxd
		else
			" set status
			let b:editingHex=0
			" switch to hex editor
			%!xxd -r
		endif
	endfunction
	
	" bind ctrl+H to toggle hex mode in 
	nnoremap <C-H> :Hexmode<CR>
	inoremap <C-H> <Esc>:Hexmode<CR>
	vnoremap <C-H> :<C-U>Hexmode<CR>
