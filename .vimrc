scriptencoding utf-8
syntax on

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
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set laststatus=2
set noshowmode
set complete+=kspell
set completeopt=menuone,longest

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
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

let g:gruvbox_contrast_dark = '(hard)'
let g:gruvbox_termcolors = '(256)'
colorscheme gruvbox
set background=dark
let mapleader = " "


nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>


nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>d :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


nnoremap <silent> <leader>u :UndotreeToggle<CR>

nnoremap <silent> <leader>r :set relativenumber<CR>
nnoremap <silent> <leader>t :set norelativenumber<CR>

inoremap jj <Esc>

nnoremap <silent> <leader>w <C-W>v

nnoremap qqq :wq!<CR>
nnoremap qa :q!<CR>
nnoremap <silent> <leader>s :w<CR>

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

nnoremap <silent> <leader>g :colorscheme gruvbox<CR>
nnoremap <silent> <leader>c :colorscheme despacio<CR>
nnoremap <silent> <leader>p :colorscheme pencil<CR>

set conceallevel=0

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <silent> <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <silent> <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <silent> <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <silent> <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <silent> <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"



