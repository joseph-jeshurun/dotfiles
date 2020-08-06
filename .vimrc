" For plugins to load correctly
filetype plugin indent on

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

filetype on
filetype plugin on
filetype indent on

syntax on

"
set ruler

" For line numbers
set number

" Display 3 lines above and below the cursor when scrolling with a mouse
set scrolloff=3

"set regular font for the Vim
set guifont=Menlo\ Regular:h18

" Status Bar
set laststatus=2

"set autoindent

"Highlight the cursor line
set cursorline

set title
set titleold="Terminal"
set titlestring=%F

" for gruvbox colorscheme
set termguicolors

" Call the .vimrc.plug file
 if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif

try
	"colorscheme gotham256
	"colorscheme dracula
	let g:gruvbox_italic=1
	"let g:gruvbox_termcolors=16
	colorscheme gruvbox
catch
endtry

set background=dark

"----------------------
" unite installation
" refer this page  http://yannesposito.com/Scratch/en/blog/Vim-as-IDE/

let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)


" --- type ° to search the word in all files in the current dir
nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag 

