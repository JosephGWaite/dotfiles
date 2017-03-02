"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/Users/josephwaite/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/josephwaite/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neoinclude.vim' 
NeoBundle 'zchee/deoplete-jedi'
NeoBundle 'w0rp/ale'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-vinegar' 
NeoBundle 'sbdchd/neoformat'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'lambdatoast/elm.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'zah/nim.vim'
NeoBundle 'jnurmine/Zenburn' 
NeoBundle 'neovimhaskell/haskell-vim' 
NeoBundle 'lervag/vimtex'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck
"End NeoBundle Scripts-------------------------"
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium' 

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let mapleader = " "

" change easy motion to one leader key
map <Leader> <Plug>(easymotion-prefix) 
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

nmap s <Plug>(easymotion-overwin-f2)
map  <Leader>w <Plug>(easymotion-bd-w)
map  <Leader>f <Plug>(easymotion-f)
map  <Leader>F <Plug>(easymotion-F)
map  <Leader>t <Plug>(easymotion-t)
map  <Leader>T <Plug>(easymotion-T)

" Gif config for searching
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"" ALE
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1

"NEOSNIPPETS
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

map <Leader>c <Plug>(vimtex-compile-toggle)

"buffer switching
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprevious!<CR>

"cursor switching depending on mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"DEPOLETE
let g:deoplete#enable_at_startup = 1 "depolete on startup
autocmd CompleteDone * pclose! "close preview window
let g:neosnippet#snippets_directory='~/.config/nvim/bundle/vim-snippets'
let g:neosnippet#enable_snipmate_compatibility = 1


set nu
set ruler
set textwidth=120
filetype on
set tabstop=4
set expandtab
syntax on
set scrolloff=4

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<

let g:netrw_liststyle = 3
