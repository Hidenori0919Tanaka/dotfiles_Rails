" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  " runtimepath の追加は必須
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
NeoBundleFetch 'Shougo/neobundle.vim'
"rails"
NeoBundle 'scrooloose/nerdtree'
" neobundle required.
set nocompatible
filetype off
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/vimproc'
NeoBundle 'Wombat'
NeoBundle 'pyte'
NeoBundle 'rails.vim'
NeoBundle 'unite.vim'
NeoBundle 'neocomplcache'
NeoBundle 'surround.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'The-NERD-Commenter'
NeoBundle 'taglist.vim'
NeoBundle 'matchit.zip'
NeoBundle 'quickrun.vim'
NeoBundle 'vim-scripts/SrcExpl'
NeoBundle 'sudo.vim'
NeoBundle 'endwise.vim'
NeoBundle 'Align'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'fugitive.vim'
NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'
NeoBundle 'git://github.com/derekwyatt/vim-scala.git'
NeoBundle 'git://github.com/wlangstroth/vim-haskell.git'
filetype plugin indent on
" Installation check.
" if neobundle#exists_not_installed_bundles()
" echomsg 'Not installed bundles : ' .
" \ string(neobundle#get_not_installed_bundle_names())
" echomsg 'Please execute ":NeoBundleInstall" command.'
" "finish
" endif

""
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
" javascript
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'moll/vim-node'
NeoBundle 'pangloss/vim-javascript'

" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on

