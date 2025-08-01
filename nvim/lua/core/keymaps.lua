-- nvim/lua/core/keymaps.lua

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Líder
vim.g.mapleader = " "

-- Explorador de archivos
keymap("n", "<leader>e", ":Ex<CR>", opts)

-- Guardar con Ctrl+s
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>i", opts)

-- Salir con Ctrl+q
keymap("n", "<C-q>", ":q<CR>", opts)
keymap("i", "<C-q>", "<Esc>:q<CR>", opts)
