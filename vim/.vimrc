"        _
" __   _(_)_ __ ___  _ __ ___  
" \ \ / / | '_ ` _ \| '__/ __| 
"  \ V /| | | | | | | | | (__  
" (_)_/ |_|_| |_| |_|_|  \___| 
"

" basic sensible defaults
    set nocompatible
    filetype off
    syntax on
    set encoding=utf-8
    set backspace=2
    set number relativenumber

    " show commands as ur typing them 
    set showcmd
    " jump to matching bracket briefly on insert
    set showmatch
    " dont redraw during macros, runs them faster
    set lazyredraw

" tabs
    " always use 4 spaces as tab
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4

" searching
    " highlight incrementally
    set incsearch
    " highlight results
    set hlsearch
    " no capitals searches case insensitive, caps are
    set smartcase ignorecase

    nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" window navigation
    nmap <C-H> <C-W>h
    nmap <C-J> <C-W>j
    nmap <C-K> <C-W>k
    nmap <C-L> <C-W>l

" buffer navigation
    nmap <silent> <C-N> :bn<CR>
    nmap <silent> <C-P> :bp<CR>

" file browsing
    " no banner
    let g:netrw_banner = 0
    " open file in previous window
    let g:netrw_browse_split = 4
    " 25% width
    let g:netrw_winsize = 25
    " for quick edits, open the file in sensible places
    let g:netrw_altv = 1
    let g:netrw_alto = 1

    map <silent> <C-E> :Lexplore<CR>

" folding
    set foldenable
    set foldlevelstart=10
    set foldmethod=indent

" autocompletion 
    set wildmenu
    set completeopt=preview
    set wildmode=longest,list,full

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
    
    " bind ctrl+B to toggle hex mode in 
    nnoremap <C-B> :Hexmode<CR>
    inoremap <C-B> <Esc>:Hexmode<CR>
    vnoremap <C-B> :<C-U>Hexmode<CR>
