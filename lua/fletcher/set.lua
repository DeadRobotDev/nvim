vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.termguicolors = true
vim.opt.updatetime = 50

vim.opt.guicursor = ''
vim.opt.scrolloff = 20

-- always show the gutter
vim.opt.signcolumn = 'yes'

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
-- source: https://vim.fandom.com/wiki/Indent_with_tabs,_align_with_spaces
vim.opt.expandtab = false
vim.opt.copyindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
--vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.colorcolumn = '80,100,120'

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- line endings
vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix,dos'

-- disable swapfiles
vim.opt.swapfile = false
vim.opt.backup = false
