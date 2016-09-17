" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jakobwesthoff/argumentrewrap'
Plugin 'thoughtbot/vim-rspec'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-abolish'
Plugin 'rainerborene/vim-reek'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'jgdavey/vim-blockle'
Plugin 'textobj-user'
Plugin 'textobj-rubyblock'

call vundle#end()
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
" set formatoptions+=q " Format comments with gq
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

" Wrap lines to 80 characters for Markdown files only
au BufRead,BufNewFile *.md setlocal textwidth=80

" Airline.vim
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme='PaperColor'

" " CtrlP.vim
" let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_jump_to_buffer = 'Et' " Jump to tab AND buffer if already open
" let g:ctrlp_split_window = 1 " <CR> = New Tab
" let g:ctrlp_open_new_file = 't' " Open newly created files in a new tab
" let g:ctrlp_open_multiple_files = 't' " Open multiple files in new tabs

" Markdown.vim
let g:markdown_fenced_languages = ['ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']

" Ruby.vim
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 0

" Syntastic.vim
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_ruby_checkers = ['rubocop']

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Make RSpec.vim use Dispatch.vim
let g:rspec_command = "Dispatch bin/rspec {spec}"

" Argumentrewrap.vim
nnoremap <silent> <leader>w :call argumentrewrap#RewrapArguments()<CR>

" Add spell checking and automatic wrapping at 72 columns to your commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Enable and disabling paste when... pasting
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Change cursor shape from thick to thin when in insert mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

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
set background=light
colorscheme PaperColor

" Abbreviations
:iabbrev bb byebug
