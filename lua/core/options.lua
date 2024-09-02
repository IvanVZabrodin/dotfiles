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
	set.fillchars = [[eob: ,fold: ,foldopen:,foldsep:│,foldclose:]]
	set.foldcolumn = "3"
	set.statuscolumn = opts.cursorcolumn

	set.clipboard = 'unnamed'

	vim.g.loaded_netrw = true
	vim.g.loaded_netrwPlugin = true
	vim.g.coc_config_home = 'C:/Users/ivanv/AppData/Local/nvim/'
	vim.g.coc_data_home = 'C:/Users/ivanv/AppData/Local/coc/'
end

return M
