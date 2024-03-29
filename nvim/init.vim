" Basic 8 over here
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set number
set nowrap
set mouse=a
syntax on

" ignore case when opening files
set wildignorecase

" Colors, vividchalk color scheme
set t_Co=256
colorscheme vividchalk

" Improved search. Yay!
set hlsearch
set smartcase
set ic

" Spam F5 to kill off whitespace, because, you know, you hit space sometimes
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Brace yourself for brace highlighting
syn match Braces display '[{}()\[\]]'
hi Braces ctermfg=43 ctermbg=0

" 80 character line limit
2mat ErrorMsg '\%81v.'
hi ErrorMsg ctermbg=238

" Some whitespace characters:
"    Trailing spaces are a dot
"    EOL is a pilcrow
"    Tabs are arrows(I like to know when tabs somehow show up)
set list lcs=trail:·,tab:>—,extends:»,precedes:«

" Disable terminal line numbers
au TermOpen * setlocal nonumber norelativenumber

" Specify undo file
set undodir=~/.vimundo
set undofile

" :Sp multiple files at once (this is really cool)
" Supports wildcards with the :argadd command
function! Sp(dir, ...)
  let split = 'sp'
  if a:dir == '1'
    let split = 'vsp'
  endif
  if(a:0 == 0)
    execute split
  else
    let i = a:0
    while(i > 0)
      execute 'let files = glob (a:' . i . ')'
      for f in split (files, "\n")
        execute split . ' ' . f
      endfor
      let i = i - 1
    endwhile
    windo if expand('%') == '' | q | endif
endif
endfunction

" Spell check
com! -nargs=* -complete=file Sp call Sp(0, <f-args>)

" Reset terminal cursor when exiting
au VimLeave * set guicursor=a:hor25-blinkon0

" Go is weird
autocmd Filetype go setlocal noexpandtab ts=8 sw=8

" So is yaml
autocmd Filetype yaml setlocal expandtab ts=2 sw=2

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" sync syntax highlighting on load for markdown files
autocmd BufEnter *.md syntax sync fromstart

" vim-go has issues with go-mod
let g:go_rename_command = 'gopls'

" enable copy paste via yank
vnoremap y "*y
vnoremap p "*p

set guicursor=
