scriptencoding utf-8
syntax enable

set noshowmatch
set nohlsearch
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
set noshowmode
set clipboard=unnamedplus
set guicursor=
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set pumblend=20
set number
set ignorecase
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set laststatus=2
set updatetime=50
set timeoutlen=300
set showtabline=0
set autoindent
set cursorline
set formatoptions-=cro
set autochdir
set splitbelow
set splitright

" Lightline customization
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
set colorcolumn=
colorscheme pencil
set background=dark
let g:gruvbox_contrast_dark = '(hard)'
let g:gruvbox_termcolors = '(256)'
nnoremap <silent> <leader>g :colorscheme gruvbox<CR>
nnoremap <silent> <leader>p :colorscheme pencil<CR>
" Transperancy
" highlight Normal ctermbg=NONE guibg=NONE

" <leader> for any custom mappings
let mapleader = " "

" Move around through windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
" Create a vertical split
nnoremap <silent> <leader>w <C-W>v

" NERDTree stuff
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>d :NERDTreeFind<CR>
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI  = 1
let NERDTreeDirArrows  = 1

" Toggle relativenumbers
nnoremap <silent> <leader>r :set relativenumber!<bar>set number!<CR>

" Easier than tapping Escape
inoremap jj <Esc>

" Saving / quitting files
nnoremap qqq :wq!<CR>
nnoremap qa :quit!<CR>
nnoremap <silent> <leader>s :write<CR>

" Miscellaneous stuff
nnoremap <leader>cc :make<CR>
nnoremap <leader>he :vert help 

" Haskell syntax stuff
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

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

