" =======================================================
"                  Vim Base Settings
" =======================================================

" Forget bing compatible with good ol' vi
set nocompatible

" Vim UI {

	syntax on
	color desert					" load a colorscheme
	set tabpagemax=15				" only show 15 tabs
	set showmode					" display the current mode

	set cursorline					" highlight current line
	set cursorcolumn				" highlight current column
	hi cursorline guibg=#333333		" highlight bg color of current line
	hi CursorColumn guibg=#333333   " highlight cursor

	if has('cmdline_info')
		set ruler					" show the ruler
		set showcmd					" show partial commands in status line and selected characters/lines in visual mode
	endif

	set backspace=indent,eol,start		" backspace for dummys
	set linespace=0						" No extra space between rows
	set nu								" Line numbers on
	set showmatch						" show matching brackets/parenthesis
	set incsearch						" find as you type search
	set hlsearch						" highlight search terms
	set winminheight=0					" windows can bo 0 line high
	set ignorecase						" case insensitive search
	set smartcase						" case sensitive when uc present
    " Enable enhanced command-line completion. Presumes you have complied
    " with +wildmenu. See :help 'wildmenu'
	set wildmenu						" show list instead of just completing
	set wildmode=list:longest,full		" command <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]		" backspace and cursor key wrap to
	set scrolljump=5					" lines to scroll when cursor leaves screen
	set scrolloff=3						" minimum lines to keep above and below cursor
	set foldenable						" auto fold code
	set gdefault						" the /g flag on :s substitutions by default
"	set list
"	set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

		
" }
" Formatting {
	set autoindent			" indent at the same level of the previouse line
	set shiftwidth=4		" use indents of 4 spaces
	set tabstop=4			" an indentation every four columns
	set softtabstop=4		" let backspace delete indent
	set laststatus=2		" always show the status bar
" }
set nobackup  

" get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Why is this not a default
"set hidden

" Don't update the display while executing macros
set lazyredraw


nmap <silent> ,ev :e $MYVIMRC<CR>      " edit .vimrc(mnemonic for the key sequence is 'e'dit 'v'imrc)
noremap <silent> ,j :wincmd j<CR>      " Move the cursor to the window ablow the current one
noremap <silent> ,h :wincmd h<cr>      " Move the cursor to the window left of the current one
noremap <silent> ,k :wincmd k<cr>      " Move the cursor to the window above the current one
noremap <silent> ,l :wincmd l<cr>      " Move the cursor to the window right of the current one
noremap <silent> ,cj :wincmd l<cr>:close<cr> " Close the window below this one
noremap <silent> ,ck :wincmd k<cr>:close<cr> " Close the window above this one
noremap <silent> ,ch :wincmd h<cr>:close<cr> " Close the window to the left of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr> " Close the window to the right of this one
noremap <silent> ,cc :close<cr>              " Close the current window 
noremap <silent> ,ml <C-W>L       " Move the current window to the right of the main Vim window
noremap <silent> ,mk <C-W>K       " Move the current window to the top of the main Vim window
noremap <silent> ,mh <C-W>H       " Move the current window to the left of the main Vim window
noremap <silent> ,mJ <C-W>J       " Move the current window to the bottom of the main Vim window

set mousehide  " Hide the mouse pointer while typing

" Auto-complete symbols {

	inoremap ( ()<ESC>i
	inoremap { {}<ESC>i
	autocmd FileType c,cpp inoremap { {<CR>}<ESC>O
	inoremap [ []<ESC>i
	inoremap " ""<ESC>i
	inoremap ' ''<ESC>i

" }

" Vim plugins {

	" Taglist {
	
		set tags=tags;    " 设置tags
	    set autochdir

	    let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
	    let Tlist_Show_One_File=1
	    let Tlist_OnlyWindow=1
	    let Tlist_Use_Right_Window=0
	    let Tlist_Sort_Type='name'
	    let Tlist_Exit_OnlyWindow=1
	    let Tlist_Show_Menu=1
	    let Tlist_Max_Submenu_Items=10
	    let Tlist_Max_Tag_length=20
	    let Tlist_Use_SingleClick=0
	    let Tlist_Auto_OPen=0
	    let Tlist_Close_On_Select=0
	    let Tlist_File_Fold_Auto_Close=1
	    let Tlist_GainFocus_On_ToggleOpen=0
	    let Tlist_Process_File_Always=1
	    let Tlist_WinHeight=10
	    let	Tlist_WinWidth=18
	    let Tlist_Use_Horiz_Window=0
	    "let mapleader=","
	    map <silent> tlg :TlistToggle<CR>

	" }

    " WinManager {
	
		let g:winManagerWindowLayout='FileExplorer|TagList'
	    nmap wm :WMToggle<CR>

	" }

    " cscope setting {
	
		if has("cscope")
			set csprg=/usr/local/bin/cscope
			set csto=1
			set cst
			set nocsverb
			" add any database in current directory
			if filereadable("cscope.out")
				cs add cscope.out
			endif
			set csverb
		endif

		nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>   " 查找c语言符号，即查找函数名、宏、枚举值的出现的地方
		nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>   " 查找函数、宏、枚举等定义的位置
		nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>   " 查找调用本函数的函数
		nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>   " 查找指定字符串
		nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>   " 查找egrep模式 暂时不清楚
		nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   " 查找并打开文件
		nmap <C-c>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> " 查找包含本文件的文件
		nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>   " 查找本函数的调用函数

	" }
	
	" QuickFix {

		nmap err :cw<CR>  " 查看编译错误信息
	    nmap ern :cn<CR>  " 跳转到下一条错误信息
	    nmap erp :cp<CR>  " 跳转到上一条错误信息
	
	" }

	" Omnicppcomplete {
	
		map <C-F12> :!ctags -R --c++-kinds=+p --fields=+ias --extra=+q .<CR>
		
	" }

" }
