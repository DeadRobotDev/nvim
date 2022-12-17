local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

local keymap = require('fletcher.keymap')

local nnoremap = keymap.nnoremap

nnoremap('<Leader>a', mark.add_file)
nnoremap('<C-i>', ui.toggle_quick_menu)
nnoremap('<C-j>', function() ui.nav_file(1) end)
nnoremap('<C-k>', function() ui.nav_file(2) end)
nnoremap('<C-l>', function() ui.nav_file(3) end)
nnoremap('<C-h>', function() ui.nav_file(4) end)
