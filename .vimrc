syntax on
filetype plugin indent on
execute pathogen#infect()


"Solarized config
if has('gui_running')
    set background=light
else
     set background=dark
endif
let g:solarized_termcolors = 256
let g:solarized_termtrans = 0
let g:solarized_degrade = 1
let g:solarized_bold = 1
let g:solarized_underline =  1
let g:solarized_italic    =  1
let g:solarized_contrast  = "high"
let g:solarized_visibility=  "high"

"Tarbar config
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width=25
let g:tagbar_autofocus=1
let g:tagbar_left = 0
let g:tagbar_sort = 0
let g:tagbar_show_data_type=0
"autocmd VimEnter * nested :TagbarOpen
"autocmd FileType c,cpp nested :TagbarOpen
nmap <C-b> :TagbarToggle<CR>

"CLear highlighting <,+n>
"noremap <silent><leader>/ :nohls<CR>
"noremap <LEADER>n :nohl<CR>
noremap <silent>,n :nohls<CR>
"highlight using * without jump to next
nnoremap * *``
nnoremap * :keepjumps normal! mi*`i<CR>

"NerdTree
let g:NERDTreeWinSize=25
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
"Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-m> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Code block jump settings
"and cancel highlighting of {} after
"map [[ ?{<CR>w99[{
"map ][ /}<CR>b99]}
"map ]] j0[[%/{<CR>
"map [] k$][%?}<CR>

map [[ :silent! eval search('{', 'b')<CR>w99[{
map ][ :silent! eval search('}')<CR>b99]}
map ]] j0[[%:silent! eval search('{')<CR>
map [] k$][%:silent! eval search('}', 'b')<CR>

"repeat previous command
"noremap <C-P> @:<CR>
noremap <C-P> @:

"Others
syntax enable
set title
colorscheme Monokai
"disable mouse so copy will work on selection
set mouse-=a
set number
set nowrap
set cursorline
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
"Highlight search color config
hi Search term=standout cterm=bold ctermfg=7 ctermbg=3

"Highlight extra white spaces at begin/end of line
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

"Set customized file type highlighting syntax
autocmd BufNewFile,BufRead *.sim set syntax=sh

