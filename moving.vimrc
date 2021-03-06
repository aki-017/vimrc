" 移動設定 

" カーソルを表示行で移動する。論理行移動は<C-n>,<C-p> {{{
nnoremap h <Left>
nnoremap j gj
nnoremap k gk
nnoremap l <Right>
nnoremap <Down> gj
nnoremap <Up>   gk
"}}}

" 0, 9で行頭、行末へ {{{
nmap 1 0
nmap 0 ^
nmap 9 $
" }}}

" インサートモードでもhjklで移動（Ctrl押すけどね）"{{{
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
"}}}

"<space>j, <space>kで画面送り"{{{
noremap <Space>j <C-f>
noremap <Space>k <C-b>
"}}}

" spaceで次のbufferへ。back-spaceで前のbufferへ"{{{
nmap <Space><Space> :bn<CR>
nmap <BS><BS> :bp<CR>
"}}}

" F2で前のバッファ, F3で次のバッファ, F4でバッファを削除する"{{{
map <F2> <ESC>:bp<CR>
map <F3> <ESC>:bn<CR>
map <Left> <ESC>:bp<CR>
map <Right> <ESC>:bn<CR>
map <F4> <ESC>:bnext \| bdelete #<CR>
command! Bw :bnext \| bdelete #
"}}}

"フレームサイズを怠惰に変更する"{{{
map <kPlus> <C-W>+
map <kMinus> <C-W>-
"}}}

" 前回終了したカーソル行に移動
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" 対応する括弧に移動"{{{
nnoremap ( %
nnoremap ) %
"}}}

" 矩形選択で自由に移動する
set virtualedit+=block

" CTRL-hjklでウィンドウ移動"{{{
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
"}}}

" insert mode でjjでesc
inoremap jj <Esc>

