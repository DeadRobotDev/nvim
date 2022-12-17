local install = require('nvim-treesitter.install')
local config = require('nvim-treesitter.configs')

install.prefer_git = false
install.compilers = { 'zig', 'clang', 'gcc', 'cl' }

config.setup({
	-- not recommended
	-- ensure_installed = 'all',
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
