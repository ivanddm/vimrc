"===================== Vim-Plug Settings  ======================= 
""Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"" Search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'

"" Setups
" Plug 'vim-scripts/scrollfix'
" Plug 'wincent/terminus'
Plug 'svermeulen/vim-easyclip'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'ryanoasis/vim-devicons'
Plug 'aymericbeaumet/vim-symlink'
Plug 'honza/vim-snippets'
Plug 'ferrine/md-img-paste.vim'
Plug 'metakirby5/codi.vim'

"" Formatting
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

"" Actions, mappings
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

"" Git
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

"" Autocompletion, LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuezk/vim-js'
" Plug 'lifepillar/vim-mucomplete'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

"" Appearance, syntax highlighting
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'machakann/vim-highlightedyank'
Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'

"" Themes
Plug 'chriskempson/base16-vim'
Plug 'gruvbox-community/gruvbox'
" Plug 'kaicataldo/material.vim'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
"===================== END Vim-Plug Settings  ======================= 

