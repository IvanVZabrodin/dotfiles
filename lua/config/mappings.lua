local M = {}

M.lsp = {
	confirm_autocomplete = '<CR>',

	next_diagnostic = 'q]',
	prev_diagnostic = 'q[',

	definition = 'qd',
	type_definition = 'qt',
	implementation = 'qi',
	references = 'qr',

	rename = 'q',
	show_docs = 'K'
}

M.navigation = {
	filesystem = '<leader>nf',
	bufferline = '<leader>B',

	telescope = {
		find_files = '<leader>ff'
	}
}

return M
