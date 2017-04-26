" Basic 8 over here
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set number
set nowrap
set mouse=a
syntax on

" Colors, vividchalk color scheme
set t_Co=256
colorscheme vividchalk

" Improved search. Yay!
set hlsearch
set smartcase

" :W to sudo save a file
command W w !sudo tee % > /dev/null

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
