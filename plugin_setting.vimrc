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

" call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
endfunction

nnoremap <silent> ff  :<C-u>Denite file_rec<CR>
nnoremap <silent> fl  :<C-u>Denite line<CR>
nnoremap <silent> fu  :<C-u>Denite file_mru:file_rec<CR>
nnoremap <silent> fg  :<C-u>Denite grep<CR>
nnoremap <silent> fy  :<C-u>Denite neoyank<CR>

function! Rails(path)
  let dir = finddir("app" , getcwd().";")."/../".a:path
  execute "Denite file_rec:".fnamemodify(dir, ":p")
endfunc
nnoremap <silent> frm  :<C-u>call Rails("app/models")<CR>
nnoremap <silent> frc  :<C-u>call Rails("app/controllers")<CR>
nnoremap <silent> frv  :<C-u>call Rails("app/views")<CR>
nnoremap <silent> frl  :<C-u>call Rails("lib")<CR>
nnoremap <silent> frj  :<C-u>call Rails("app/assets/javascripts")<CR>
nnoremap <silent> frs  :<C-u>call Rails("app/assets/stylesheets")<CR>
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

let g:deoplete#enable_at_startup = 1
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
" autocmd! BufWritePost,BufEnter * Neomake
