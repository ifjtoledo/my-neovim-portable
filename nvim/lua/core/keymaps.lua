-- nvim/lua/core/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Explorador de archivos con :Ex
map('n', '<leader>e', ':Ex<CR>', opts)

-- Guardar con Ctrl+S
map('n', '<C-s>', ':w<CR>', opts)
map('i', '<C-s>', '<Esc>:w<CR>i', opts)

-- Salir con Ctrl+Q
map('n', '<C-q>', ':q<CR>', opts)
map('i', '<C-q>', '<Esc>:q<CR>', opts)
