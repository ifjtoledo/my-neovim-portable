-- nvim/lua/core/options.lua

local opt = vim.opt

-- Numeración
opt.number = true
opt.relativenumber = true

-- Tabs y espacios
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Sintaxis y color
vim.cmd("syntax on")
opt.background = "dark"

-- Indentación
opt.smartindent = true
opt.autoindent = true

-- Activar mouse
opt.mouse = "a"

-- Búsqueda
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
