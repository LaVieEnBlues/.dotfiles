" +----------------+
" | Basic settings |
" +----------------+

set nu rnu
set term=xterm-color
syntax on
"colorscheme default
set autoindent
set cindent

" Tabs to spaces, 3 spaces
set tabstop=3
set shiftwidth=3
set expandtab

" +---------+
" | Plugins |
" +---------+

"call plug#begin('~/.vim/plugged')

"Plug 'itchyny/lightline.vim'

"call plug#end()

" +------------------+
" | Lightline config |
" +------------------+

"set noshowmode
"set laststatus=2
"if !has('gui_running')
"  set t_Co=256
"endif

"let g:lightline = {
"      \ 'colorscheme': 'PaperColor_dark',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
"      \ },
"      \ 'component': {
"      \   'charvaluehex': '0x%B'
"      \ },
"      \ }

" +---------------+
" | Auto commands |
" +---------------+

" compile .Xresources
	autocmd BufWritePost .Xresources,.Xdefaults,*.th !xrdb ~/.Xresources

" compile *_pres.md
   autocmd BufWritePost *_pres.md !pandoc -t beamer -o %:r.pdf %
   
" compile *_doc.md
   autocmd BufWritePost *_doc.md !pandoc -s -o %:r.pdf %
