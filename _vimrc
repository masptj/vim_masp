set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

runtime! plugin/sensible.vim

"Set the status line options. Make it show more information.
"www.vim.org/ugrankar.pdf (material tirado desta matéria
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"Configuração mais sofisticada para maximizar a tela
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  " http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=55
  endif
  if exists("+columns")
    set columns=140
  endif
endif

"colorscheme kolor
"colorscheme molokai
colorscheme solarized
"Sugestão do site: http://blog.psy-q.ch/2012/07/building-your-own-sublime-out-of-free-components-with-vim/
"colorscheme xoria256

"Configurações retiradas de: http://blog.myhro.info/2011/11/instalando-e-configurando-o-vim-no-windows/"
" Desabilitar o mouse:
set mouse=

" Desabilitar menus:
set guioptions-=m
set guioptions-=r
set guioptions-=T

" Desabilitar backups:
set nobackup
set noswapfile
set nowritebackup

" Cores e tema:
filetype on
syntax on

" Clipboard do sistema:
set clipboard=unnamed

" Tabs por espaços:
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Indentação:
filetype plugin indent on
set autoindent
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

" Régua, quebra e número de linhas:
set linebreak
set ruler

"Linha numerada ou sem sumero"
set number
nnoremap <F11> :set nonumber!<CR>

"Navegação entre abas:
map <C-Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

"Busca:
set hlsearch
set ignorecase
set incsearch

"Limpar os resultados destacados:
nmap <silent> <C-C> :silent noh<CR>

" Fonte e janela:
set guifont=consolas:h12
set encoding=utf-8
"set lines=36 columns=142
set wildmenu

"Salvar:
nmap <silent> <C-S> :silent w<CR>

"Mapeamento do NERDTree
"silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nmap <F6> :NERDTreeToggle<CR> 

"mostra o nome do arquivo com o caminho
map <F2> :echo expand("%:p") <CR>

"Mostra o caminho atual
map <F3> :pwd <CR>

"Movendo entre os Buffers
"Dica de: http://vim.wikia.com/wiki/Easier_buffer_switching
:nnoremap <F5> :buffers<CR>:buffer<Space>

"Fechar o buffer"
map <F7> :bw <CR>

"Por trocar o filetype no caso html e php pode-se aplicar a autoidentacao do
"html nos arquivos php"
map <F8> :set filetype=html <CR>
map <F9> :set filetype=php <CR>

"Configuração do EasyMotion liberar o uso do <leader>
let g:EasyMotion_leader_key = '<Leader>' 

"Incluindo a sintaxe ejs no vim"
au BufNewFile,BufRead *.ejs set filetype=html


