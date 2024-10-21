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
	show_docs = 'K',

	comment_section = '<leader>cs'
}

M.navigation = {
	filesystem = '<leader>nf',
	bufferline = '<leader>B',
	set_cwd = '<leader>cd',

	telescope = {
		find_files = '<leader>ff',
		buffers = '<leader>fb',
		help = '<leader>fh'
	},

	escape_terminal = '<Esc>'
}

return M
