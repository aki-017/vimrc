" 編集関連

" insertモードを抜けるとIMEオフ {{{
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
" }}}

" yeでそのカーソル位置にある単語をレジスタに追加
nmap ye ;let @"=expand("<cword>")<CR>
" Visualモードでのpで選択範囲をレジスタの内容に置き換える
vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Tabキーを空白に変換
set expandtab

" XMLの閉タグを自動挿入 {{{
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END
"}}}

" Insert mode中で単語単位/行単位の削除をアンドゥ可能にする {{{
inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>
" }}}

" :Ptでインデントモード切替 {{{
command! Pt :set paste!
"}}}

" インサートモード中に<C-o>でyankした内容をputする {{{
inoremap <C-o> <ESC>:<C-U>YRPaste 'p'<CR>i
" }}}

" y0 y9で行頭 行末までヤンク {{{
nmap y9 y$
nmap y0 y^
"}}}

" 保存時に行末の空白を除去する
" autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
" autocmd BufWritePre * :%s/\t/  /ge

" 日時の自動入力
inoremap <expr> ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ,dd strftime('%Y/%m/%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

" foldは各FiltTypeにお任せる {{{
set foldmethod=syntax
" .vimはmarker
autocmd FileType vim :set foldmethod=marker
" }}}

" <leader>json でJSONをformat
map <Leader>json !python -m json.tool<CR>

" quickfixウィンドウではq/ESCで閉じる {{{
autocmd FileType qf nnoremap <buffer> q :ccl<CR>
autocmd FileType qf nnoremap <buffer> <ESC> :ccl<CR>
" }}}

" cwでquickfixウィンドウの表示をtoggleするようにした {{{
function! s:toggle_qf_window()
  for bufnr in range(1,  winnr('$'))
    if getwinvar(bufnr,  '&buftype') ==# 'quickfix'
      execute 'ccl'
      return
    endif
  endfor
  execute 'botright cw'
endfunction
nnoremap <silent> cw :call <SID>toggle_qf_window()<CR>
" }}}

