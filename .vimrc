"vim基本設定
set encoding=utf-8
set cursorline "底線 目前游標位置
set ic "搜尋不分大小寫
syntax on "語法上色
"set expandtab "將文件中的tab轉成space顯示
set cindent "自動縮排 
set tabstop=4 "tab換成幾個空格
set shiftwidth=4 "自動縮排時的空格數量
set number "顯示行號
set ruler "顯示右下角詳細資訊
set incsearch "find as you type
set hlsearch "find as you type
set backspace=2 
"color dracula
""""""""""""""""""""""""""""""""""""""""""
"nerdtree自定義快捷鍵
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
au VimEnter *  NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map  <F3>      :NERDTreeMirror <CR>
map  <C-n>     :NERDTreeToggle <CR>
"Switch between file browser and editor
map  <C-LEFT>  :NERDTreeFocus  <CR>
nmap <C-RIGHT> <C-w>l
map  <C-h>     :NERDTreeFocus  <CR>
nmap <C-l>     <C-w>l
"Switch between tabs
map  <S-LEFT>  :bp  <CR>
map  <S-RIGHT> :bn  <CR>
map  <S-h>     :bp  <CR>
map  <S-l>     :bn  <CR>

augroup NERD
    au!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END
"auto complete brackets"  
"inoremap ( ()<LEFT>
"inoremap < <><LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap " ""<LEFT>
""""""""""""""""""""""""""""""""""""""""""
"airline theme
set ambiwidth=double
let laststatus = 2
let g:airline_powerline_fonts = 1   " 使用powerline的字体
"let g:airline_theme="syntastic"      " 設定主題
let g:airline_theme="kolor"      " 设置主题
let g:airline_section_b = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
""""""""""""""""""""""""""""""""""""""""""
"安裝外掛
call plug#begin('~/.vim/plugged')
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""
"設定256色(預設只有16色)
set t_Co=256
