local M = {}
local opts = require("options.options")

M.load = function ()
	local set = vim.g
	set.termguicolors = true

	vim.cmd('colorscheme ' .. opts.theme)
	
	-- local kanagawa = require('kanagawa')
	-- kanagawa.setup {
	-- 	overrides = function (colours)
	-- 		return {
	-- 			NormalFloat = { bg = "none" },
	-- 			FloatBorder = { bg = "none" },
	-- 			FloatTitle = { bg = "none" },
	-- 		}
	-- 	end
	-- }

end

M.post = function() end

return M
