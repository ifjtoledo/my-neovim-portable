" === RetroShaolin Base Config ===

" Numeración de líneas
set number
set relativenumber

" Tabs y espacios
set tabstop=4
set shiftwidth=4
set expandtab

" Sintaxis y color
syntax on
set background=dark

" Indentación inteligente
set smartindent
set autoindent

" Explorador de archivos (usa :Ex)
nnoremap <leader>e :Ex<CR>

" Activar mouse
set mouse=a

" Mejor búsqueda
set ignorecase
set smartcase
set incsearch
set hlsearch

" Guardar con Ctrl+s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" Salir con Ctrl+q
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>

