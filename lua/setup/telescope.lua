local M = {}

M.load = function ()
	local telescope = require('telescope')
	telescope.setup {}

	telescope.load_extension('fzy_native')
	telescope.load_extension('coc')
end

return M
