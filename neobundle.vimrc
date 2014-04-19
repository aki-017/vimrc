set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.neobundle/neobundle.vim/

  call neobundle#rc(expand('~/.neobundle'))
endif

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vinarise'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'echo "Sorry, cannot update vimproc binary file in Windows."',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Align'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'Gundo'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'thinca/vim-textobj-between'
NeoBundle 'thinca/vim-textobj-comment'
NeoBundle 'thinca/vim-textobj-function-javascript'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'glidenote/octoeditor.vim'
NeoBundle 'yonchu/accelerated-smooth-scroll'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'matchit.zip'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'taglist.vim'
NeoBundle 'errormarker.vim'
NeoBundle 'banyan/recognize_charcode.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'bling/vim-airline'
NeoBundle 'sudo.vim'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'basyura/unite-rails'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'choplin/unite-vim_hacks'
NeoBundle 'yuroyoro/yuroyoro256.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'aki017/unite-unity'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundleLazy 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }
NeoBundle 'wavded/vim-stylus'
NeoBundleLazy 'othree/html5.vim', {
\   'autoload': {'filetypes': ['html', 'erb', 'htm']}
\ }
NeoBundleLazy 'digitaltoad/vim-jade', {
\   'autoload': {'filetypes': ['jade']}
\ }

filetype plugin on
filetype indent on


