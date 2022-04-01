set ignorecase
set number
set mouse=v
set hlsearch
set nowrap
set tabstop=4
set softtabstop=4
set signcolumn=yes
set incsearch
set expandtab
set nocompatible
set foldmethod=syntax
set shiftwidth=4
set autoindent
set wildmode=longest,list
set mouse=a
set clipboard=unnamedplus
set noswapfile
set foldmethod=indent
set foldlevel=99
set encoding=UTF-8
set noshowmode
syntax on
set smartindent

filetype plugin on

let python_highlight_all=1
let g:netrw_banner=0

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'github/copilot.vim'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

let g:indentLine_setColors = 0
let g:indentLine_char_list = ['¦']
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
nnoremap <C-p> :Telescope git_files<CR>
nnoremap <C-P> :Telescope find_files<CR>
nnoremap <S-F> :Telescope live_grep<CR>
nnoremap <C-e> :CocCommand explorer<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
nnoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap kj <Esc>
imap jk <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-p> :Telescope git_files<CR>
nnoremap <C-P> :Telescope find_files<CR>
nnoremap <S-F> :Telescope live_grep<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>z :ZoomToggle<CR>)
imap <silent><script><expr> <C-x> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
