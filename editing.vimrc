" 編集関連

" insertモードを抜けるとIMEオフ {{{
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
" }}}

" Tabキーを空白に変換
set expandtab

set clipboard+=unnamedplus
" y0 y9で行頭 行末までヤンク {{{
nmap y9 y$
nmap y0 y^
"}}}

" 保存時に行末の空白を除去する
" autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
" autocmd BufWritePre * :%s/\t/  /ge

" foldは各FiltTypeにお任せる {{{
" set foldmethod=syntax
set nofoldenable
" .vimはmarker
autocmd FileType vim :set foldmethod=marker
autocmd FileType vim :set foldenable
" }}}

" <leader>json でJSONをformat
map <Leader>json !jq .<CR>

" quickfixウィンドウではq/ESCで閉じる {{{
autocmd FileType qf nnoremap <buffer> q :ccl<CR>
autocmd FileType qf nnoremap <buffer> <ESC> :ccl<CR>
" }}}
