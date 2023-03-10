local lspconfig = require('lspconfig')
local cmp = require('cmp')
local null_ls = require('null-ls')
local keymap = require('fletcher.keymap')

local buf_nnoremap = keymap.buf_nnoremap

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},
})

cmp.setup.filetype('c', {
	enabled = false,
})

cmp.setup.filetype('cpp', {
	enabled = false,
})

null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.revive,
	},
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, _)
	buf_nnoremap('K', vim.lsp.buf.hover)

	buf_nnoremap('gd', function()
		vim.lsp.buf.definition({ reuse_win = true })
	end)
	buf_nnoremap('gt', function()
		vim.lsp.buf.type_definition({ reuse_win = true })
	end)
	buf_nnoremap('gi', vim.lsp.buf.implementation)
	buf_nnoremap('gr', '<Cmd>Telescope lsp_references<CR>')

	buf_nnoremap('<Leader>f', function()
		vim.lsp.buf.format({ async = true })
	end)
	buf_nnoremap('<Leader>ca', vim.lsp.buf.code_action)
	buf_nnoremap('<Leader>rn', vim.lsp.buf.rename)

	buf_nnoremap('<Leader>dl', '<Cmd>Telescope diagnostics<CR>')
	buf_nnoremap('<Leader>dj', vim.diagnostic.goto_next)
	buf_nnoremap('<Leader>dk', vim.diagnostic.goto_prev)
end

-- add here for default config
local servers = {
	'clangd',
	'zls',
	'gopls',
	'tsserver',
	'html',
	'cssls',
	'jsonls',
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

local lua_ls_root_path = os.getenv('USERPROFILE') .. '/Programs/lua-language-server'
local lua_ls_binary = lua_ls_root_path .. '/bin/lua-language-server'

lspconfig.lua_ls.setup({
	cmd = { lua_ls_binary, '-E', lua_ls_root_path .. '/main.lua' },
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { 'vim' },
			},
			format = {
				defaultConfig = {
					quote_style = 'single',
					end_of_line = 'lf',
				},
			},
			telemetry = {
				enable = false,
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file('', true),
				-- disables popup about configuring the workspace
				checkThirdParty = false,
			},
		},
	},
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = '*',
	callback = function()
		if vim.bo.ft == 'c' or vim.bo.ft == 'cpp' then
			vim.opt.list = true
		else
			vim.opt.list = false
		end
	end
})
