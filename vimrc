"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           BASIC SETTING                           " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" {

	" Forgetting bing compatible with VI
	set nocompatible

	" Loading a colorscheme
	colorscheme desert
	color desert

	" Highlighting the current line and setting blackground color
	" set cursorline
	" hi cursorline guibg=#333333

	" Highlighting the current column and setting blackground color
	" set cursorcolumn
	" hi cursorcolumn guibg=#333333

	" Showing the line number
	set number

	" Showing matching brackets/parenthesis
	set showmatch

	" Finding as you type search
	set incsearch

	" Highlighting search terms
	set hlsearch

	" Case insensitive search
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

	" Windows can be zero line high
	set winminheight=0

	" No extra space between rows
	set linespace=0

	" Backspace for dummys
	set backspace=indent,eol,start

	" Always show the status bar
	set laststatus=2

	" Setting command height
	" set cmdheight=3

	" Hiding the mouse pointer while typing
	set mousehide

	" Using indents of 4 spaces
	set shiftwidth=4

	" An indentation every four columns
	set tabstop=4

	" let backspace delete indent
	set softtabstop=4

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

	" Do not flod code at first
	set nofen

	" flod code
	set fdm=indent

	" Getting that filetype stuff happening
	filetype on
	filetype plugin on
	filetype indent on

	" Highlighting syntax
	syntax on

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            KEYS MAPPING                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" Mapping edit .vimrc
	nmap ,ev :sp<CR>:e $MYVIMRC<CR>

	" Automatic complete ()
	inoremap ( ()<ESC>i

	" Automatic complete []
	inoremap [ []<ESC>i

	" Automatic complete {}
	" inoremap { {}<ESC>i

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

	" Show tab
	" Highlight problematic whitespace
	noremap <F3> :set list<CR>:set listchars=tab:>-,trail:-,extends:#,nbsp:-<CR>
	noremap <F4> :set nolist<CR>

	" No highlight
	noremap ,nh :nohl<CR>

	" Inserting date
	noremap <F12> :read !date +'\%Y-\%m-\%d \%H:\%M'<CR>kJ$

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         C/C++ PROGRAMMING                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" automatic complete {}
	autocmd FileType c,cpp,cc inoremap F{ {<CR>}<ESC>O

	" Compiling C/C++ program
	autocmd FileType c,cpp,cc nmap <F7> <ESC>:wa<CR>:make clean<CR>:make<CR>:cw<CR>

	" Automatic complete "
	autocmd FileType c,cpp,cc inoremap " ""<ESC>i

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	"                        A.VIM PLUGIN SETTING                       "
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" {

	" jump between header and source for c/c++ file
	nmap th :A<CR>

	" vertical and jump between header and source for c/c++ file
	nmap thv :AV<CR>

	" splits and jump between header and source for c/c++ file
	nmap ths :AS<CR>

	" swtiches to file under cursor
	nmap Ih :IH<CR>

	" vertical and swtiches to file under cursor
	nmap Ihv :IHV<CR>

	" splits and swtiches to file under cursor
	nmap Ihs :IHS<CR>

	" }
	
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	"                     OmniCppComplete PLUGIN SETTING                "
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

	set nocp

	" Extract C/C++ symbols information
	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

	" Add tags file
	set tags+=/usr/include/tags

	" Display the prototype of a function
	let OmniCpp_ShowPrototypeInAbbr = 1

	" Select/Don't select first popup item
	let OmniCpp_SelectFirstItem = 2

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      TAGLIST PLUGINS SETTING                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" NOTICE: This plugin need ctags

	set autochdir
	set tags+=tags;


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
	let Tlist_WinWidth=18
	let Tlist_Use_Horiz_Window=0
	map <silent> tlg :TlistToggle<CR>

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   CODE_COMPLETE PLUGIN SETTING                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	set completeopt=longest

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     WINMANAGER  PLUGIN SETTING                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" Setting hot key
	nmap wm :WMToggle<CR>

	" Face
	let g:winManagerWindowLayout = "FileExplorer,BufExplorer|TagList"

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     NERDTREE PLUGINS SETTING                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" Always show bookmarks
	let NERDTreeShowBookmarks=1

	" Setting NERDTree windows size
	let NERDTreeWinSize=25

	" Setting NERDTree windows placed
"	let NERDTreeWinPos="right"

	" Highlighting the current line
	let NERDTreeHighlightCursorline=0

	noremap wn :NERDTree<CR>

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     POWERLINE PLUGINS SETTING                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" Show Unicode glyphs
	set encoding=utf-8

	" Tell vim that the terminal supports 256 colors
	set t_Co=256

	" Set powerline theme
	" let g:Powerline_theme = 'solarized256'

	" Set powerline colorscheme
	let g:Powerline_colorscheme = 'solarized256'
" }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       VUNDLE PLUGINS SETTING                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {

	" Must be required
	filetype off

	" Setting the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'

	" Plugin code_complete
	Plugin 'mbbill/code_complete'

	" a.vim switch between header file and source file
	Plugin 'vim-scripts/a.vim'

	" A classical windows type environment
	Plugin 'vim-scripts/winmanager'

	" c-support plugin
	" Plugin 'vimscript/c-support'

	" YouCompleteMe
	" Plugin 'Valloric/YouCompleteMe'

	" Taglist plugin
	Plugin 'vim-scripts/taglist.vim'

	" OmniCppComplete
	" vim-scripts/OmniCppComplete
	Plugin 'vim-scripts/OmniCppComplete'

	" Nerdtree plugin
	Plugin 'scrooloose/nerdtree'

	" Powerline plugin
	Plugin 'Lokaltog/vim-powerline'

	" All of plugins must be added before the following line
	call vundle#end()

	filetype plugin indent on

	filetype on

" }

