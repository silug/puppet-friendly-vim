" Default terminal is white-on-black.
set background=dark

" Make tab completion work more like it does in bash.
set wildmode=longest,list

" Better defaults for Puppet and YAML.
set shiftwidth=2
set shiftround
set expandtab
set smarttab

" Better searching.
set incsearch
set ignorecase
set smartcase

" Map ^L to do what it does, but also clear search highlighting.
nnoremap <C-L> :nohlsearch<CR><C-L>

" Hide other buffers instead of abandoning them.
set hidden

" Makes visual block mode work better.
set virtualedit=block

" Indent in visual and select mode automatically re-selects.
vnoremap > >gv
vnoremap < <gv

" Makes . do the right thing in visual mode.
" From @nelstrom, via @wnodom and @CrypticSwarm.
vnoremap . :normal .<CR>

" Enable the mouse.
" Shift+mouse in xterm reverts to normal xterm behavior.
set mouse+=a

" Enable pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Status bar stuff.
set showcmd
set laststatus=2

" Default left statusline info
set statusline=%<%f\ %h%m%r

" Syntastic statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Default right statusline info
set statusline+=%=%-14.(%l,%c%V%)\ %P

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
