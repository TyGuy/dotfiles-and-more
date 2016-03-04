" thanks so far to:
" https://gist.github.com/benmccormick/4e4bc44d8135cfc43fc3
" http://vimconfig.com/
" http://vim.rtorr.com/
" Ricky Zein, Justin McCandless, and others

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

""" Stuff for Vundle:
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"now list plugins, starting with Vundle
Plugin 'VundleVim/Vundle.vim'
" Fuzzy File Search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'altercation/vim-colors-solarized'
" Text/Variable Completion
Plugin 'Valloric/YouCompleteMe'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" For SLIM syntax highlighting support
Plugin 'slim-template/vim-slim'

" For displaying the file tree
Plugin 'scrooloose/nerdtree'

" For using ack in Vim
Plugin 'mileszs/ack.vim'
" Sublime Text-like surround
Plugin 'terryma/vim-multiple-cursors'
" For nice comments
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

" ruby-vim needs this for syntax-highlighting/completion
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set linebreak
" Make text wrap downwards instead of cutting it off
set display+=lastline
set textwidth=100

" show 'bell' and don't make sound
set visualbell

" Maps jj to leaving insert mode (press twice quickly)
imap jj <ESC>

" Maps leader (\) to space
let mapleader = "\<Space>"

" Maps : to ;, removing the shift step
nnoremap ; :

" Save a session:
map <leader>ss :mksession! ~/.vim_session <cr>

" Restore a session:
map <leader>sr :source ~/.vim_session <cr>

" Automatically reload vimrc once it's saved
augroup AutoReloadVimRC
    au!
      au BufWritePost $MYVIMRC so $MYVIMRC
    augroup END

" search stuff, not sure if want or not
set hlsearch
set smartcase
set incsearch

" tab/indents:
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

" Faster scrolling
set lazyredraw

set undolevels=1000

" Make backspace less weird
set backspace=indent,eol,start

" use system clipboard, thanks to:
" http://stackoverflow.com/questions/8757395/can-vim-use-the-system-clipboards-by-default
set clipboard=unnamed,unnamedplus

" show line number
set number

" put syntax highlighting on
syntax enable

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Lets you search using '/' ignoring case. Smart enough to see caps
set ignorecase
set smartcase

" Type // to clear search highlight
map //  :nohlsearch<CR>; echo 'Search highlight cleared' <CR>

" Strip whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

" Show the cursor position all the time
set ruler



" For Solarized Color Scheme (thanks! https://github.com/altercation/vim-colors-solarized)
set background=dark
colorscheme solarized

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" For ctrlp file search plugin:
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" Ignore some folders and files for CtrlP indexing
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_max_files=0
let g:ctrlp_match_window = 'results:30'

" Copy file paths
" relative path
nnoremap cp :let @+ = expand("%") <CR>

" full path
nnoremap cpp :let @+ = expand("%:p") <CR>

" just filename
nnoremap cpf :let @+ = expand("%:t") <CR>
