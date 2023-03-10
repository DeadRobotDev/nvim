local telescope = require('telescope')
local builtin = require('telescope.builtin')

local keymap = require('fletcher.keymap')

telescope.setup()
telescope.load_extension('fzf')

local nnoremap = keymap.nnoremap

nnoremap('<C-p>', '<Cmd>Telescope<CR>')
nnoremap('<Leader>ff', builtin.find_files)
nnoremap('<Leader>fs', builtin.live_grep)
nnoremap('<Leader>fb', builtin.buffers)
