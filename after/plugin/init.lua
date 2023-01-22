local keymap = require('fletcher.keymap')

local nnoremap = keymap.nnoremap
local anoremap = keymap.anoremap

nnoremap('<Leader>pv', '<Cmd>Ex<CR>')
nnoremap('<CR>', '<Plug>NetrwBrowseX')

-- DO NOT remap h until used to jkl;
nnoremap('h', '<Nop>')
nnoremap('j', 'h')
nnoremap('k', 'j')
nnoremap('l', 'k')
nnoremap(';', 'l')

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
