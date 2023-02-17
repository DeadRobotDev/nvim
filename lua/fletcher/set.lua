vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.termguicolors = true
vim.opt.updatetime = 50

vim.opt.guicursor = ''
vim.opt.scrolloff = 20

vim.opt.filetype = 'on'

-- always show the gutter
vim.opt.signcolumn = 'yes'

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
vim.opt.listchars:append('space:·')
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.cinoptions = 'l1';

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
