local function bind(mode, outer_opts)
	return function(lhs, rhs, opts)
		-- 'force' - use the value from the rightmost map.
		opts = vim.tbl_extend('force', {}, outer_opts or {}, opts or {})

		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

local M = {}

-- recursive mapping (remap) - the result of a keymap (Q > j) can call another keymap (j > gg).
-- non-recursive mapping (noremap) - the result of a keymap (Q > j) will only perform the action (j).
M.remap = bind('', { silent = true })
M.noremap = bind('', { silent = true })
M.nnoremap = bind('n')
M.vnoremap = bind('v')
M.inoremap = bind('i')
M.anoremap = bind({ 'n', 'v', 'i' })

-- 'buffer = 0' - only bind the keymap to the current buffer.
M.buf_nnoremap = bind('n', { buffer = 0 })
M.buf_vnoremap = bind('v', { buffer = 0 })
M.buf_inoremap = bind('i', { buffer = 0 })

return M
