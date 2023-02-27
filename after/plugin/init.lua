local keymap = require('fletcher.keymap')

local noremap = keymap.noremap
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

noremap('w', '<Plug>CamelCaseMotion_w', { silent = true });
noremap('b', '<Plug>CamelCaseMotion_b', { silent = true });
noremap('e', '<Plug>CamelCaseMotion_e', { silent = true });
noremap('ge', '<Plug>CamelCaseMotion_ge', { silent = true });
