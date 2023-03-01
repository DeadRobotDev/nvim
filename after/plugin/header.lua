local get_separator = function()
	if jit then
		local os = string.lower(jit.os)

		if os ~= 'windows' then
			return '/'
		else
			return '\\'
		end
	else
		return
	end
end

local split_by_separator = function(input, separator)
	local pattern = string.format('([^%s.]+)', separator)

	local t = {}
	for str in string.gmatch(input, pattern) do
		table.insert(t, str)
	end

	return t
end

local add_header_guard = function()
	local buffer_name = vim.api.nvim_buf_get_name(0)
	local separator = get_separator()

	local split = split_by_separator(buffer_name, separator)

	local split_maxn = table.maxn(split)
	local ext = split[split_maxn]

	if string.lower(ext) ~= 'h' then
		return
	end

	local split_start = 0

	for i, v in ipairs(split) do
		if v == 'include' then
			split_start = i+1
		end
	end

	local define = string.upper(table.concat(split, '_', split_start))

	local contents = {}

	table.insert(contents, string.format('#if !defined(%s)', define))
	table.insert(contents, string.format('#define %s', define))
	table.insert(contents, '')
	table.insert(contents, string.format('#endif // %s', define))

	vim.api.nvim_buf_set_lines(0, 0, #contents, false, contents)
	vim.api.nvim_win_set_cursor(0, { 3, 0 })
end

vim.api.nvim_create_autocmd('BufNewFile', {
	pattern = '*.h',
	callback = add_header_guard,
})
