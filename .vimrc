"禁用VI兼容模式 arrow key 冲突(输出A,B,C,D)
set nocompatible

"Vim 的内部编码
set encoding=utf-8

"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8

"Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8

"Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

"编辑PHP

"格式化高亮
syntax on

"显示行号
set nu

"括号匹配
set showmatch

"在缩进和遇到 Tab 键时使用空格替代
set expandtab

set backspace=2 

"根据文件类型设置缩进格式 
au FileType html,sh,yml,python,vim,javascript setl shiftwidth=2
au FileType html,sh,yml,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

"启动vim时不要自动折叠代码
set foldlevel=100

"自动对齐
set ai

"依据上面的对起格式
set si
set smarttab
set wrap
set lbr
set tw=0
set foldmethod=syntax

" show location
" set cursorcolumn
" set cursorline


" history : how many lines of history VIM has to remember
set history=2000

" show
set ruler                       " show the current row and column
set number                      " show line numbers
set nowrap
set showcmd                     " display incomplete commands
set showmode                    " display current modes
set showmatch                   " jump to matches when entering parentheses
set matchtime=2                 " tenths of a second to show the matching parenthesis

" search
set hlsearch                    " highlight searches
set incsearch                   " do incremental searching, search as you type
set ignorecase                  " ignore case when searching
set smartcase                   " no ignorecase if Uppercase char present

"plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  "------  NERDTree Options  ------
  "当打开vim且没有文件时自动打开NERDTree
  autocmd vimenter * NERDTree
  autocmd vimenter * if !argc(  )   | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  map <C-n> :NERDTreeToggle<CR>

Plug 'vim-scripts/taglist.vim'
  " taglist
  
   let Tlist_Auto_Highlight_Tag = 1
  
   let Tlist_Auto_Open = 1
 
   let Tlist_Auto_Update = 1
  
   let Tlist_Close_On_Select = 0
  
   let Tlist_Compact_Format = 0
  
   let Tlist_Display_Prototype = 0
  "
   let Tlist_Display_Tag_Scope = 1
  "
   let Tlist_Enable_Fold_Column = 0
  "
   let Tlist_Exit_OnlyWindow = 1
  "
   let Tlist_File_Fold_Auto_Close = 0
  "
   let Tlist_GainFocus_On_ToggleOpen = 1
  "
   let Tlist_Hightlight_Tag_On_BufEnter = 1
  "
   let Tlist_Inc_Winwidth = 0
  "
   let Tlist_Max_Submenu_Items = 1
  "
   let Tlist_Max_Tag_Length = 30
  "
   let Tlist_Process_File_Always = 0
  "
   let Tlist_Show_Menu = 0
  
   let Tlist_Show_One_File = 0
  
   let Tlist_Sort_Type = "order"
  
   let Tlist_Use_Horiz_Window = 0
  
   let Tlist_Use_Right_Window = 1
  
   let Tlist_WinWidth = 40

Plug 'Shougo/neocomplcache'
  " Dissable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplcache.
  let g:neocomplcache_enable_at_startup = 1
  " Use smartcase.
  let g:neocomplcache_enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 3
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

call plug#end()

"ctags
set tags=tags;
set autochdir
