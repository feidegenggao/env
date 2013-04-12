set nocompatible 
syntax enable
syntax on   
set showmode 
set showcmd 
set showmatch
set ruler    
set mps+=<:> 
set backspace=indent,eol,start
set incsearch 
set hlsearch 
set number 
colorscheme desert
set tabstop=4       
set shiftwidth=4   
set expandtab   
set tags=~/.vim/tags  
set tags+=/root/p2pclient_live/tags
set tags+=./tags
set encoding=utf-8 
set fileencodings=utf-8,gbk,gb2312,gb18030,ucs-bom,cp936,latin1
func! Format()
    set fileencoding=utf-8
    retab
endfunc
noremap <silent> <F1> :call Format()<cr> 
nmap <silent> <F9> :make<cr>
noremap <silent> <F11> :cn<cr>
noremap <silent> <F12> :cp<cr>
noremap <silent> <F10> :cw<cr>
if filereadable('tags')
    set tags+=tags
endif
func! ProduceTags()
    if filereadable("tags")
        exec "!rm tags"
    endif
    exec "!ctags -R --c++-kinds=+p --fields=+ialS --extra=+q ."
    set tags+=tags
endfunc
noremap <silent> <F3> :call ProduceTags()<cr>
filetype on
let Tlist_Show_One_File=1                
"let Tlist_Exit_OnlyWindow=1            
"let Tlist_Use_Right_Window=1          
"let Tlist_GainFocus_On_ToggleOpen=1  
"let Tlist_Sort_Type="name"       
let g:winManagerWindowLayout='FileExplorer|TagList'
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <S-j> <C-W>+  " down
map <S-k> <C-W>-  " up
map <S-l> <C-W><  " right
map <S-h> <C-W>>  " left

noremap <F8> :WMToggle<cr>
let g:miniBufExplMapWindowNavVim=1    
"let g:miniBufExplMapWindowNavArrows=1 
let g:miniBufExplMapCTabSwitchBufs=1  
let g:miniBufExplModSelTarget=1     
map <silent> <C-A> :A<cr>
map <silent> <F9> :A<cr>
nmap <silent> <F5> :Rgrep<cr>
filetype plugin indent on    
set completeopt=longest,menu   
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-I>"
let g:EchoFuncKeyNext="<F6>"
 filetype plugin on

set cursorline
set cc=80
noremap <F1> :!date<cr>
