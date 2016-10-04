" プラグインごとの設定

" yankround.vim {{{
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
"}}}

" vim-easy-align {{{
  vmap <Enter>     <Plug>(EasyAlign)
  vmap <Leader>tsp :EasyAlign*\<Space><Enter>
  vmap <Leader>t=  :EasyAlign*=<Enter>
  vmap <Leader>t,  :EasyAlign /,\+/<Enter>
"}}}

" NERD_commenter.vim"{{{
" コメントの間にスペースを空ける
let NERDSpaceDelims = 1
""未対応ファイルタイプのエラーメッセージを表示しない
let NERDShutUp=1
"}}}

" surround.vim"{{{
" s, ssで選択範囲を指定文字でくくる
nmap s <Plug>Ysurround
nmap ss <Plug>Yssurround
"}}}

" vim-indent-guides"{{{
nnoremap <silent> <Space>id :<C-u>IndentGuidesToggle<Enter>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 4
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey15 guifg=grey22 ctermbg=233 ctermfg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey30 guifg=grey22 ctermbg=235 ctermfg=234
"}}}

" gundo.Vim"{{{
nmap U :<C-u>GundoToggle<CR>
"}}}

" denite.nvim"{{{
nnoremap <silent> ff  :<C-u>Denite file_rec<CR>
nnoremap <silent> fl  :<C-u>Denite line<CR>
nnoremap <silent> fu  :<C-u>Denite file_mru:file_rec<CR>
nnoremap <silent> fg  :<C-u>Denite grep<CR>
nnoremap <silent> fy  :<C-u>Denite neoyank<CR>

nnoremap <silent> frm  :<C-u>Denite -no-split rails/model<CR>
nnoremap <silent> frc  :<C-u>Denite -no-split rails/controller<CR>
nnoremap <silent> frv  :<C-u>Denite -no-split rails/view<CR>
nnoremap <silent> frl  :<C-u>Denite -no-split rails/lib<CR>
nnoremap <silent> frj  :<C-u>Denite -no-split rails/javascript<CR>
nnoremap <silent> frs  :<C-u>Denite -no-split rails/stylesheet<CR>

"}}}

" airline "{{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t:.'
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
"}}}

" autocmd! BufWritePost,BufEnter * Neomake
