local M = {}

M.load = function ()
	local opts = require('config.options')

	local set = vim.opt

	set.tabstop = opts.tabstop
	set.softtabstop = opts.tabstop
	set.shiftwidth = opts.tabstop

	set.mousemoveevent = true

	set.foldmethod = 'expr'
	set.foldexpr = 'nvim_treesitter#foldexpr()'
	set.foldenable = false

	set.relativenumber = true
	set.signcolumn = "yes"

	vim.g.loaded_netrw = true
	vim.g.loaded_netrwPlugin = true
end

return M
