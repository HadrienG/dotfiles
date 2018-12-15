"Show line numbers
set number

"syntax highlighting and colors
syntax on
colorscheme desert

"Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

"When searching try to be smart about cases
set smartcase

"Highlight search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Use spaces instead of tabs
set expandtab

"Be smart when using tabs ;)
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"Always show the status line
set laststatus=2

"Allow moving with the mouse
set mouse=a

"Enable wildmenu
set wildmenu

"Load plugins
so ~/.vim/plugins.vim

"NERDtree toogle with C^O
map <C-o> :NERDTreeToggle<CR>
