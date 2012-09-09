colorscheme desert
compiler gcc

set autoindent
set autowrite
set backspace=eol,start,indent
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set ruler
set scrolloff=2
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set softtabstop=4
set tabstop=8
set whichwrap=h,l,~,[,]
set wildmode=list:longest,full

set cino=:2=2b0

execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)

if has("syntax")
    syntax on
endif

filetype plugin on
filetype indent on
filetype on

autocmd FileType c set formatoptions+=ro
autocmd FileType c set cindent shiftwidth=4
autocmd FileType perl set smartindent
autocmd FileType make set noexpandtab

nmap <silent> h h:nohlsearch<CR>

nmap <silent> <C-p> \np
nmap <silent> <C-i> \ni

nnoremap <silent> <S-F6> <C-w><C-W>
nnoremap <silent> <F6> <C-w><C-w>
nnoremap <silent> <S-F7> :bp<CR>
nnoremap <silent> <F7> :bn<CR>

if has("gui_running")
    set wildmenu
    if has("gui_gtk2")
	:set guifont=Luxi\ Mono\ 8
    elseif has("x11")
	" Also for GTK 1
	:set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
    elseif has("gui_win32")
	:set guifont=Luxi_Mono:h12:cANSI
    elseif has("gui_macvim")
        :set guifont=Monaco:h9
        :set toolbar=icons,text
        :set toolbariconsize=small
        :set guioptions+=T
    else
        :set guifont=Monaco:h9
    endif
else
    source $VIMRUNTIME/menu.vim
    set wildmenu
    set cpo-=<
endif
