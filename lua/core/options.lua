local M = {}

local opts = require('options.options')
local set = vim.opt

M.load = function ()
	set.mousemoveevent = true
	set.clipboard = 'unnamed'

	vim.g.coc_config_home = 'C:/Users/i_zabrodin23/AppData/Local/nvim/' --TODO: Fix later
	vim.g.coc_data_home = 'C:/Users/i_zabrodin23/AppData/Local/coc/'
end

M.neotree = function ()
	vim.g.loaded_netrw = true
	vim.g.loaded_netrwPlugin = true
end

M.statuscolumn = function ()
	set.relativenumber = true
	set.fillchars = opts.fillchars
	set.foldcolumn = "3"
	set.statuscolumn = opts.cursorcolumn
end

M.folds = function ()
	set.foldmethod = 'expr'
	set.foldexpr = 'nvim_treesitter#foldexpr()'
	set.foldenable = false
end

M.tabs = function ()
	set.tabstop = opts.tabstop
	set.softtabstop = opts.tabstop
	set.shiftwidth = opts.tabstop
end


M.post = function ()
	M.neotree()
	M.statuscolumn()
	M.folds()
	M.tabs()

end

return M
