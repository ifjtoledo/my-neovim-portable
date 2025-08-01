-- nvim/lua/core/options.lua

local opt = vim.opt

-- Numeración de líneas
opt.number = true
opt.relativenumber = true

-- Tabs y espacios
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Colores y sintaxis
opt.syntax = 'on'
opt.background = 'dark'

-- Indentación
opt.smartindent = true
opt.autoindent = true

-- Mouse
opt.mouse = 'a'

-- Búsqueda inteligente
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
