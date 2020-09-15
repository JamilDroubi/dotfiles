" CUSTOM MAPPINGS

" <leader> for any custom mappings
let mapleader = " "

" Move around through windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" Create a vertical split
nnoremap <silent> <leader>w <C-W>v

" Toggle line numbers
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

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"  to move to {char}
map  <silent><leader>/ <Plug>(easymotion-bd-f)
nmap <silent><leader>/ <Plug>(easymotion-overwin-f)

" Move to line
map <silent><leader>L <Plug>(easymotion-bd-jk)
nmap <silent><leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <silent><leader>w <Plug>(easymotion-bd-w)
nmap <silent><leader>w <Plug>(easymotion-overwin-w)

" Apply all my settings
nnoremap <silent><leader><leader><leader> :source /home/jd/.config/nvim/init.vim<CR>

" Conveniently delete words in insert mode
" Good for notes
inoremap  diw
