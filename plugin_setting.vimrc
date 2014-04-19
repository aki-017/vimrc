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

" Align"{{{
" Alignを日本語環境で使用するための設定
let g:Align_xstrlen = 3
"}}}

" VTreeExplorer"{{{
" 縦に表示する
let g:treeExplVertical=1
"}}}

" NERD_commenter.vim"{{{
" コメントの間にスペースを空ける
let NERDSpaceDelims = 1
"<Leader>xでコメントをトグル(NERD_commenter.vim)
map <Leader>x, c<space>
""未対応ファイルタイプのエラーメッセージを表示しない
let NERDShutUp=1
"}}}

" surround.vim"{{{
" s, ssで選択範囲を指定文字でくくる
nmap s <Plug>Ysurround
nmap ss <Plug>Yssurround
let g:surround_{char2nr('e')} = "begin \r end"
let g:surround_{char2nr('d')} = "do \r end"
let g:surround_{char2nr("-")} = ":\r"
"}}}

" Fugitive.vim"{{{
nnoremap <Space>gd :<C-u>Gdiff<Enter>
nnoremap <Space>gs :<C-u>Gstatus<Enter>
nnoremap <Space>gl :<C-u>Glog<Enter>
nnoremap <Space>ga :<C-u>Gwrite<Enter>
nnoremap <Space>gc :<C-u>Gcommit<Enter>
nnoremap <Space>gC :<C-u>Git commit --amend<Enter>
nnoremap <Space>gb :<C-u>Gblame<Enter>
"}}}

" BufExplorer"{{{
"<Leader>l<Space>でBufferList
nnoremap <Leader>l<Space> :BufExplorer<CR>
"}}}

" VTreeExplorer"{{{
let g:treeExplVertical=1
"<Leader>t<Space>でディレクトリツリー表示
noremap <Leader>t<Space> :VSTreeExplore<CR>
"分割したウィンドウのサイズ
let g:treeExplWinSize=30
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
" nmap U :<C-u>GundoToggle<CR>
"}}}

" taglist.Vim"{{{
" 関数一覧
set tags=tags
"set tags+=~/.tags
"let Tlist_Ctags_Cmd = '/Applications/MacVim.app/Contents/MacOS/ctags' " ctagsのパス
let Tlist_Show_One_File = 1               " 現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             " taglistのウィンドーが最後のウィンドーならばVimを閉じる
" let Tlist_Use_Right_Window = 1            " 右側でtaglistのウィンドーを表示
let Tlist_Enable_Fold_Column = 1          " 折りたたみ
let Tlist_Auto_Open = 0                   " 自動表示
let Tlist_Auto_Update = 1
let Tlist_WinWidth = 30
"map <silent> <leader>tl :Tlist<CR>        " taglistを開くショットカットキー
nmap <F7> :TrinityToggleTagList<CR>
nmap <Leader>tl :TrinityToggleTagList<CR>
"}}}

" Srcexp"{{{
" [Srcexpl] tagsを利用したソースコード閲覧・移動補助機能
let g:SrcExpl_UpdateTags    = 1         " tagsをsrcexpl起動時に自動で作成（更新）
let g:SrcExpl_RefreshTime   = 0         " 自動表示するまでの時間(0:off)
let g:SrcExpl_WinHeight     = 9         " プレビューウインドウの高さ
let g:SrcExpl_RefreshMapKey = "<Space>" " 手動表示のMAP
let g:SrcExpl_GoBackMapKey  = "<C-b>"   " 戻る機能のMAP
" Source Explorerの機能ON/OFF
" nmap <F8> :CMiniBufExplorer<CR>:SrcExplToggle<CR>:TMiniBufExplorer<CR>
"}}}

" errormarker.vim"{{{
" disable default shortcut mapping and re-define to <Leader>ec
let g:errormarker_disablemappings = 1
nmap <silent> <unique> <Leader>ec :ErrorAtCursor<CR>
"}}}

" vimshell"{{{
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
" let g:vimshell_right_prompt = 'vimshell#vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
let g:vimshell_enable_smart_case = 1

if has('win32') || has('win64')
  " Display user name on Windows.
  let g:vimshell_prompt = $USERNAME."% "
else
  " Display user name on Linux.
  let g:vimshell_prompt = $USER."% "

  call vimshell#set_execute_file('bmp,jpg,png,gif', 'gexe eog')
  call vimshell#set_execute_file('mp3,m4a,ogg', 'gexe amarok')
  let g:vimshell_execute_file_list['zip'] = 'zipinfo'
  call vimshell#set_execute_file('tgz,gz', 'gzcat')
  call vimshell#set_execute_file('tbz,bz2', 'bzcat')
endif

function! g:my_chpwd(args, context)
  call vimshell#execute('echo "chpwd"')
endfunction
function! g:my_emptycmd(cmdline, context)
  call vimshell#execute('echo "emptycmd"')
  return a:cmdline
endfunction
function! g:my_preprompt(args, context)
  call vimshell#execute('echo "preprompt"')
endfunction
function! g:my_preexec(cmdline, context)
  call vimshell#execute('echo "preexec"')

  if a:cmdline =~# '^\s*diff\>'
    call vimshell#set_syntax('diff')
  endif
  return a:cmdline
endfunction

autocmd FileType vimshell
\ call vimshell#altercmd#define('g', 'git')
\| call vimshell#altercmd#define('i', 'iexe')
\| call vimshell#altercmd#define('l', 'll')
\| call vimshell#altercmd#define('ll', 'ls -l')
\| call vimshell#hook#set('chpwd', ['g:my_chpwd'])
\| call vimshell#hook#set('emptycmd', ['g:my_emptycmd'])
\| call vimshell#hook#set('preprompt', ['g:my_preprompt'])
\| call vimshell#hook#set('preexec', ['g:my_preexec'])

command! Vs :VimShell
"}}}

" unite.vim"{{{
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    f [unite]

nnoremap [unite]u  :<C-u>Unite -no-split<Space>

" 全部乗せ
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir -no-split -buffer-name=files buffer file_mru bookmark file<CR>
" ファイル一覧
nnoremap <silent> [unite]f  :<C-u>Unite -no-split -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b  :<C-u>Unite -no-split buffer<CR>
" 常用セット
nnoremap <silent> [unite]u  :<C-u>Unite -no-split buffer file_mru<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m  :<C-u>Unite -no-split file_mru<CR>
" 現在のバッファのカレントディレクトリからファイル一覧
nnoremap <silent> [unite]d  :<C-u>UniteWithBufferDir -no-split file<CR>

" nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

let g:yankring_zap_keys = ""
" from basyura/unite-rails
nnoremap <silent> [unite]rm  :<C-u>Unite -no-split rails/model<CR>
nnoremap <silent> [unite]rc  :<C-u>Unite -no-split rails/controller<CR>
nnoremap <silent> [unite]rv  :<C-u>Unite -no-split rails/view<CR>
nnoremap <silent> [unite]rl  :<C-u>Unite -no-split rails/lib<CR>
nnoremap <silent> [unite]rj  :<C-u>Unite -no-split rails/javascript<CR>
nnoremap <silent> [unite]rs  :<C-u>Unite -no-split rails/spec<CR>

" from unite-unity
nnoremap <silent> [unite]pc  :<C-u>Unite -no-split unity/class<CR>
"}}}

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

  " ESCキーを2回押すと終了する
  nmap <buffer> <ESC>      <Plug>(unite_exit)
  nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  nnoremap <silent><buffer> <C-k> :<C-u>call unite#mappings#do_action('preview')<CR>
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  " Start insert.
  let g:unite_enable_start_insert = 1

  " ウィンドウを分割して開く
  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')

  " ウィンドウを縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
endfunction

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
 
" unite-grepのキーマップ
" 選択した文字列をunite-grep
" https://github.com/shingokatsushima/dotfiles/blob/master/.vimrc
vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

"}}}

let g:unite_source_file_mru_limit = 200

" unite-plugins
cnoremap UH Unite help<Enter>
cnoremap UO Unite outline<Enter>

" quickrun.vim"{{{
let g:quickrun_config = {}
let g:quickrun_config._ = {'runner' : 'vimproc','runner/vimproc/updatetime' : 10,}
let g:quickrun_config['rspec/bundle'] = {
  \ 'type': 'rspec/bundle',
  \ 'command': "rspec",
  \ 'cmdopt': "-l %{line('.')}",
  \ 'exec': "bundle exec %c %o %s ",
  \ 'filetype': 'rspec-result'
  \}
let g:quickrun_config['rspec/normal'] = {
  \ 'type': 'rspec/normal',
  \ 'command': "rspec",
  \ 'cmdopt': "-l %{line('.')}",
  \ 'exec': '%c %o %s',
  \ 'filetype': 'rspec-result'
  \}
function! RSpecQuickrun()
  let b:quickrun_config = {'type' : 'rspec/bundle'}
endfunction
autocmd BufReadPost *_spec.rb call RSpecQuickrun()
"}}}

" Syntastic"{{{
" エラー行をsignで表示する
let g:syntastic_enable_signs = 1
" 可能ならhighligt表示する
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list=1
"}}}

" toggle.vim"{{{
imap <C-A> <Plug>ToggleI
nmap <C-A> <Plug>ToggleN
vmap <C-A> <Plug>ToggleV

let g:toggle_pairs = { 'and':'or', 'or':'and', 'if':'unless', 'unless':'if', 'yes':'no', 'no':'yes', 'enable':'disable', 'disable':'enable', 'pick':'reword', 'reword':'fixup', 'fixup':'squash', 'squash':'edit', 'edit':'exec', 'exec':'pick' }
"}}}

" vim-coffee-script"{{{
" 自動コンパイルはいらないかなって
" autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
"}}}

" OmniSharp "{{{ 
nnoremap <silent> mc :OmniSharpFindSyntaxErrors<CR>
nnoremap <silent> mf :OmniSharpCodeFormat<CR>
nnoremap <silent> md :OmniSharpGotoDefinition<CR>
nnoremap <silent> <C-w>md <C-w>s:OmniSharpGotoDefinition<CR>
nnoremap <silent> mi :OmniSharpFindImplementations<CR>
nnoremap <silent> mr :OmniSharpRename<CR>
nnoremap <silent> mt :OmniSharpTypeLookup<CR>
nnoremap <silent> mu :OmniSharpFindUsages<CR>
nnoremap <silent> mx :OmniSharpGetCodeActions<CR>
"}}}

" airline "{{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t:.'
let g:airline_symbols = {}
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'
"}}}
"
