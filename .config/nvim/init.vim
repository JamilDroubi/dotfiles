" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

scriptencoding utf-8
syntax enable

set clipboard=unnamedplus
set guicursor=
set noshowmatch
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set rnu
set nowrap
set ignorecase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set laststatus=2
set noshowmode
set updatetime=50
set timeoutlen=300

set t_Co=256
set showtabline=0
set autoindent
set cursorline
set formatoptions-=cro
set autochdir
set splitright


let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'],
      \             [ 'readonly', 'filename', 'modified'],
      \             ['benzene']],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'benzene': "\u232c",
      \   'charvaluehex': '0x%B',
      \   'readonly': '%{&filetype=="help"?"":&readonly?"\ue0a2":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"\u3004":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "", 'right': "" }
      \ }

" Colors
highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=100
colorscheme pencil
set background=dark
let mapleader = " "
" Transperancy
" highlight Normal ctermbg=NONE guibg=NONE

" Move around through windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" NERDTree stuff
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>d :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <silent> <leader>r :set relativenumber<CR>
nnoremap <silent> <leader>t :set norelativenumber<CR>

inoremap jj <Esc>

nnoremap <silent> <leader>w <C-W>v

nnoremap qqq :wq!<CR>
nnoremap qa :q!<CR>
nnoremap <silent> <leader>s :w<CR>

" Haskell stuff
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Colors
let g:gruvbox_contrast_dark = '(hard)'
let g:gruvbox_termcolors = '(256)'
nnoremap <silent> <leader>g :colorscheme gruvbox<CR>
nnoremap <silent> <leader>p :colorscheme pencil<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
" inoremap <silent> <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
" inoremap <silent> <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
" inoremap <silent> <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
" inoremap <silent> <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
" inoremap <silent> <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
