syntax on
filetype plugin indent on

"Pathogen config
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
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left = 0
nmap <F3> :TagbarToggle<CR>

"CLear highlighting <,+n>
"noremap <silent><leader>/ :nohls<CR>
"noremap <LEADER>n :nohl<CR>
noremap <silent>,n :nohls<CR>

"NerdTree
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

"Code block jump settings
"and cancel highlighting of {} after
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>


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
set softtabstop=4
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
