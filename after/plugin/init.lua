local keymap = require('fletcher.keymap')

local nnoremap = keymap.nnoremap
local anoremap = keymap.anoremap

nnoremap('<Leader>pv', '<Cmd>Ex<CR>')
nnoremap('<CR>', '<Plug>NetrwBrowseX')

anoremap('<Left>', '<Nop>')
anoremap('<Right>', '<Nop>')
anoremap('<Up>', '<Nop>')
anoremap('<Down>', '<Nop>')

anoremap('<C-Left>', '<Nop>')
anoremap('<C-Right>', '<Nop>')
anoremap('<C-Up>', '<Nop>')
anoremap('<C-Down>', '<Nop>')

anoremap('<Home>', '<Nop>')
anoremap('<End>', '<Nop>')
