if has('nvim')
    "curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let s:vim_dir = '.nvim'
else
    "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let s:vim_dir = '.vim'
endif

call plug#begin('~/' . s:vim_dir . '/plugged')
Plug 'bling/vim-airline'        "Status line
Plug 'kien/ctrlp.vim'           "File search
Plug 'tpope/vim-fugitive'       "Git integration
Plug 'flazz/vim-colorschemes'   "Monokai and other colorschemes
Plug 'jiangmiao/auto-pairs'     "Autoclose (, [, ', etc...
Plug 'scrooloose/nerdtree'      "File tree
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
call plug#end()

"ui
sy on
set nu
set t_Co=256
set background=dark
colorscheme Monokai
set laststatus=2
set mouse=a
set splitright                              "vnew new window at the right
if has('nvim')
    set backspace=2                         "https://github.com/neovim/neovim/issues/1495
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1     "change cursor when insert mode
endif

"tabs
set expandtab
set tabstop=4
set shiftwidth=4

"search
set incsearch
set hlsearch
set ignorecase

"equal
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType json setlocal equalprg=python\ -m\ json.tool\ 2>/dev/null

"file
set ffs=unix,dos

"plugin
let g:airline_powerline_fonts = 1
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1
