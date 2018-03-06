" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'neomake/neomake'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jakobwesthoff/argumentrewrap'
Plug 'janko-m/vim-test'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-abolish'
Plug 'elixir-lang/vim-elixir'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'mhartington/oceanic-next'
Plug 'jgdavey/vim-blockle'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

Plug 'vim-scripts/SQLUtilities'
Plug 'vim-scripts/Align'

Plug 'geoffharcourt/vim-matchit'
Plug 'rhysd/vim-textobj-ruby'
Plug 'kana/vim-textobj-user'

" Initialize plugin system
call plug#end()

filetype plugin indent on

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Set some junk
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set expandtab " Expand tabs to spaces
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
" set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
" set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
" set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
" set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set smartcase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
" set noerrorbells " Disable error bells.
" set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set noshowmode " Don't show the current mode (Powerline takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
" set report=0 " Show all changes.
set ruler " Show the cursor position
" set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shell=/bin/sh " Use /bin/sh for executing shell commands
set shiftwidth=2 " The # of spaces for indenting.
" set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set softtabstop=2 " Tab key results in 2 spaces
" set splitbelow " New window goes below
" set splitright " New windows goes right
" set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
" set ttyfast " Send more characters at a given time.
" set undofile " Persistent Undo.
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.
set wrapscan " Searches wrap around end of file
set colorcolumn=80 " Show a line at column 80
set nofoldenable " disable folding

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" " Sudo write (,W)
" noremap <leader>W :w !sudo tee %<CR>

" " Get output of shell commands
" command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Remap :W to :w
command W w

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>

" Don't leave vim when :Ggrep ing
nnoremap <leader>gg :Ggr -i 
:command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

" Git grep word under cursor
nnoremap \g :Ggr <C-R><C-W><CR>

" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

" Reek
let g:reek_line_limit = 1000
let g:reek_on_loading = 0

" vim-jsx
" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Buffer navigation (,,) (,]) (,[) (,ls)
map <Leader>, <C-^>
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>

" Close Quickfix window (,qq)
map <leader>qq :cclose<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Ruby
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Coffee
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" Deface
au BufNewFile,BufReadPost *.deface setl ft=haml syntax=haml

" Wrap lines to 80 characters for Markdown files only
au BufRead,BufNewFile *.md setlocal textwidth=80

" Airline.vim
let g:airline_powerline_fonts = 1

" fzf.vim
nnoremap <space><space> :Files<CR>
nnoremap <space>b :Buffers<CR>

" Markdown.vim
let g:markdown_fenced_languages = ['ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']

" Ruby.vim
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 0

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

" Vim-test
" make test commands execute using dispatch.vim
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#strategy = "neovim"

" Argumentrewrap.vim
nnoremap <silent> <leader>w :call argumentrewrap#RewrapArguments()<CR>

" prettify sql:
vnoremap <Leader>rp :s/\<update\>\\|\<select\>\\|\<from\>\\|\<where>\\|\<left join\>\\|\<inner join\>\\|\<group by\>\\|\<having\>\\|\<order by\>/\r\U&/ge<cr><esc>

" Add spell checking and automatic wrapping at 72 columns to your commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Enable and disabling paste when... pasting
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" JSX syntax highlighting and indenting for .js files too
let g:jsx_ext_required = 0

" ctags
nnoremap <leader>ct :!ctags -R *<CR>

" Code notes
nnoremap <Leader>nn :CtrlP ~/Dropbox/notes/<CR>

" Custom macros
" Replace ruby's hashrockets with the new syntax
let @h= ':s/:\(\w\+\)\s\+=>/\1:/g'

" Make vim more useful
set nocompatible
filetype on

" Set syntax highlighting options.
set t_Co=256
syntax enable
set background=dark
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

runtime macros/matchit.vim

" Abbreviations
:iabbrev bb byebug
