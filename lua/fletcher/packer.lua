-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')

	use('nvim-lua/plenary.nvim')
	use('nvim-telescope/telescope.nvim')
	use({
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
	})
	use('ThePrimeagen/harpoon')
	use('tpope/vim-fugitive')

	use({
		'nvim-treesitter/nvim-treesitter',
		-- prevents error on fresh install
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	})
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('jose-elias-alvarez/null-ls.nvim')

	use({
		'haze/zig.vim',
		branch = 'rsaihe_master',
	})

	use('cappyzawa/trim.nvim')

	use('nvim-lualine/lualine.nvim')

	use(os.getenv('USERPROFILE') .. '/Programs/bin/whitebox_v0.99.0/editor_plugins/whitebox-vim')

	-- colour schemes
	use('gruvbox-community/gruvbox')
	use('folke/tokyonight.nvim')
end)
