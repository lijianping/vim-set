""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              BASIC SETTING                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{

" Forgetting bing compatible with VI
set nocompatible

" Loading a colorscheme
color desert
colorscheme desert

" Highlighting the current line and setting blackground color
" set cursorline
" hi cursorline guibg=#333333

" Highlighting the current column and setting blackground color
" set cursorcolumn
" hi cursorcolumn guibg=#333333

" Showing line numbers
set number

" Showing matching brackets/parenthesis
set showmatch

" Stopping find if reached file EOF
set nowrapscan

" Finding as you type search
set incsearch

" Highlighting search terms
set hlsearch

" case insensitive search
set ignorecase

" Case sensitive when uc present
set smartcase

" Setting no backup file
set nobackup

" Setting automatic indent
set autoindent

if has('cmdline_info')
	" Showing the ruler
	set ruler
	" Showing partial commands in status line
	" and selected characters/lines in visual mode
	set showcmd
endif

" Setting the history commands remembering
set history=50

" Windows can be 0 line high
set winminheight=0

" No extra space between rows
set linespace=0

" Backspace for dummys
set backspace=indent,eol,start

" Always show the status bar
set laststatus=2

" Setting command height
" set cmdheight=3

" Hide the mouse pointer while typing
set mousehide

" use indents of 4 spaces
" set shiftwidth=4

" an indentation every four columns
" set tabstop=4

" let backspace delete indent
" set softtabstop=4

" Don't update the display while executing macros
set lazyredraw

" Enable enhanced command-line completion. Presumes you have complied
" with +wildmenu. See :help 'wildmenu'
" show list instead of just completing
set wildmenu

" command <Tab> completion, list matches, then longest common part, then all.
set wildmode=list:longest,full

" backspace and cursor key wrap to
set whichwrap=b,s,h,l,<,>,[,]

" lines to scroll when cursor leaves screen
set scrolljump=5

" minimum lines to keep above and below cursor
set scrolloff=3

" Automatic fold code
" set foldenable

" The /g flag on :s substitutions by default
set gdefault

" Highlight problematic whitespace
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Getting that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Highlighting syntax
syntax on

"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              KEYS MAPPING                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{

" edit .vimrc(mnemonic for the key sequence is 'e'dit 'v'imrc)
nmap ,ev :vs<CR>:e $MYVIMRC<CR>

"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            WINDOW MANAGEMENT                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{

" Moving the cursor to the above of the current window
noremap ,k :wincmd k<CR>

" Moving the cursor to the ablow of the current window
noremap ,j :wincmd j<CR>

" Moving the cursor to the left of the current window
noremap ,h :wincmd h<CR>

" Moving the cursor to the right of the current window
noremap ,l :wincmd l<CR>

" Moving the current window to the above
noremap ,mk :wincmd K<CR>

" Moving the current window to the ablow
noremap ,mj :wincmd J<CR>

" Moving the current window to the left
noremap ,mh :wincmd H<CR>

" Moving the current window to the right
noremap ,ml :wincmd L<CR>

" Closing the window at above of the current window
noremap ,ck :wincmd k<CR>:close<CR>

" Closing the window at below of the current window
noremap ,cj :wincmd j<CR>:close<CR>

" Closing the window at left of the current window
noremap ,ch :wincmd h<CR>:close<CR>

" Closing the window at right of the current window
noremap ,cl :wincmd l<CR>:close<CR>

" Closing the current window
noremap ,cc :close<CR>

"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            C/C++ PROGRAMMING                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{

" automatic complete {}
autocmd FileType c,cpp inoremap { {<CR>}<ESC>O

" Compiling C/C++ program
autocmd FileType c,cpp nmap <F7> <ESC>:wa<CR>:make clean<CR>:make<CR>:cw<CR>

"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            AUTOMATIC SYMBOLS                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{

" automatic complete ()
inoremap ( ()<ESC>i

" automatic complete {}
inoremap { {}<ESC>i

" automatic complete []
inoremap [ []<ESC>i

" automatic complete ""
" inoremap " ""<ESC>i

" automatic complete ''
" inoremap ' ''<ESC>i

"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VIM PLUGINS                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{
	" Taglist {
		set tags=tags    
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
	"}
	
	" WinManager {
	
		let g:winManagerWindowLayout='FileExplorer|TagList'
	    nmap wm :WMToggle<CR>

	" }
	
	" QuickFix {
		" show complie error information
		nmap err :cw<CR>
		" jump to the next error information
	    nmap ern :cn<CR>
	  	" jump to the previouse error information
	    nmap erp :cp<CR>
	
	" }
	
	" Omnicppcomplete {
	
		map <C-F12> :!ctags -R --c++-kinds=+p --fields=+ias --extra=+q .<CR>
		
	" }
	
	" pathogen {
		execute pathogen#infect()
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
			" add database pointed to environment
			elseif $CSCOPE_DB != ""
				cs add $CSCOPE_DB
			endif
			set csverb
		endif

	 	" finding c language symbols, for example, functions, enums, macros
		nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>

		" Finding the definition postion of the functions,enums and macros
		nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>

		" Finding the caller functions
		nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>

		nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>

		nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>
		
		nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>

		nmap <C-c>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

		nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>

	" }

"}
