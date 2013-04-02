set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.neobundle/neobundle.vim/

  call neobundle#rc(expand('~/.neobundle'))
endif

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
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
NeoBundle 'YankRing.vim'
NeoBundle 'Gundo'
NeoBundle 'tpope/vim-surround'
NeoBundle 'textobj-user'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'thinca/vim-textobj-plugins'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'textobj-rubyblock'
NeoBundle 'textobj-entire'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'glidenote/octoeditor.vim'
NeoBundle 'Smooth-Scroll'
NeoBundle 'smartword'
NeoBundle 'camelcasemotion'
NeoBundle 'EasyMotion'
NeoBundle 'matchit.zip'
NeoBundle 'grep.vim'
NeoBundle 'eregex.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'taglist.vim'
NeoBundle 'errormarker.vim'
NeoBundle 'DumbBuf'
NeoBundle 'minibufexpl.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'banyan/recognize_charcode.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'Lokaltog/vim-powerline'
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

filetype plugin on
filetype indent on

