set nu
set nobk
set ai
set ar
set si
set is
set hls
set wildmenu
set showcmd
set expandtab
set cul
set cuc
set shortmess=atI
set go=
set ts=4
set sw=4
set laststatus=2
set fencs=utf-8,gbk
set completeopt=preview,menu
set fdm=manual

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" set new file extension.
au BufNewFile,BufRead *.md set ft=markdown
au BufNewFile,BufRead *.md set nonu

set runtimepath+=~/.vim/bundle/vim-pathogen
execute pathogen#infect()
syntax on
filetype indent plugin on

" vim-buffergator
" 显示方式设置
let g:buffergator_viewport_split_policy="b"

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_json_frontmatter = 1

" NERDTree
" 当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 如果出现小方块打开这个选项
"let NERDTreeDirArrows = 0

" neocomplete
if (has("lua"))
    let g:neocomplete#enable_at_startup = 1
end

" ctrlp
let g:ctrlp_custom_ignore = {"dir":"vendor"}

colorscheme monokai

" 指定go源文件路径
if exists($GOPATH)
    au FileType go setlocal path+=$GOPATH/src
else
    au FileType go setlocal path+=$HOME/go/src
end


" Godef
let g:godef_split=0
let g:godef_same_file_in_same_window=1

" golint
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

au BufNewFile,BufRead *.phtml set ft=html
au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict