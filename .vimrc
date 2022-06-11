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

"YouCompleteMe
"let g:ycm_global_ycm_extra_conf='/home/gavin/.vim/bundle/youcompleteme/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.vim/plugin/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_cache_omnifunc=0
let g:ycm_auto_trigger=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_complete_in_strings=1
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "objc":1,
            \ "sh":1,
            \ "zsh":1,
            \ "zimbu":1,
            \ "python":1,
            \ }
set completeopt=menu,menuone
nnoremap <C-Z> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-X> :YcmCompleter GetType<CR>

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
colorscheme monokain
"disable mouse so copy will work on selection
set mouse-=a
set number
set nowrap
set cursorline
set tabstop=4
set softtabstop=2
"use << or >> or == indent characters
set shiftwidth=2
set expandtab
set smartindent
set wildmenu
set lazyredraw
"set autochdir "disable this for ctags to work
set showmatch
set incsearch
set hlsearch
set splitright
"Highlight search color config
hi Search term=standout cterm=bold ctermfg=7 ctermbg=3

"Highlight extra white spaces at begin/end of line
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

"Set customized file type highlighting syntax
autocmd BufNewFile,BufRead *.sim set syntax=sh

"Set pop up menu color
highlight Pmenu ctermfg=blue ctermbg=black
highlight PmenuSel ctermfg=white ctermbg=black
