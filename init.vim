if &compatible
  set nocompatible
endif
let g:loaded_ruby_provider = 1
set runtimepath+=$HOME/repo/github.com/Shougo/dein.vim

call dein#begin("$HOME/.config/nvim")

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neoyank.vim')
call dein#add('Shougo/denite.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('LeafCage/yankround.vim')
call dein#add('mrkn/mrkn256.vim')
call dein#add('junegunn/vim-easy-align')
call dein#add('scrooloose/nerdcommenter')
call dein#add('tpope/vim-surround')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('sjl/gundo.vim')
call dein#add('neomake/neomake')
call dein#add('Shougo/deoplete.nvim')
" call dein#add('osyo-manga/vim-monster')
" call dein#add('Shougo/deoplete-rct')
call dein#add('Shougo/vimproc')

" js
call dein#add('othree/yajs.vim')

call dein#end()

set runtimepath+=$HOME/repo/github.com/aki017/denite-rails.nvim

if dein#check_install()
  call dein#install()
  exit
endif
filetype plugin indent on
syntax enable


" Basic {{{
source ~/repo/github.com/aki017/vimrc/basic.vimrc
" }}}

" 編集関係 {{{
source ~/repo/github.com/aki017/vimrc/editing.vimrc
" }}}

" インデント {{{
source ~/repo/github.com/aki017/vimrc/indent.vimrc
" }}}

" エンコーディング {{{
source ~/repo/github.com/aki017/vimrc/encoding.vimrc
" }}}

"外観 {{{
source ~/repo/github.com/aki017/vimrc/apperance.vimrc
"}}}

"補完 {{{
source ~/repo/github.com/aki017/vimrc/completion.vimrc
"}}} 

"その他 {{{
source ~/repo/github.com/aki017/vimrc/other.vimrc
"}}} 

"プラグインの設定 {{{
source ~/repo/github.com/aki017/vimrc/plugin_setting.vimrc
"}}} 

"移動 {{{
source ~/repo/github.com/aki017/vimrc/moving.vimrc
"}}} 

"検索 {{{
source ~/repo/github.com/aki017/vimrc/search.vimrc
"}}} 

"ステータスライン {{{
source ~/repo/github.com/aki017/vimrc/statusline.vimrc
"}}} 
