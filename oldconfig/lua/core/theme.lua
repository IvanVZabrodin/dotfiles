-- Controls colorscheme and overrides --
local M = {}

M.load = function () -- Run before config
	vim.opt.termguicolors = true

	local kanagawa = require('kanagawa')
	kanagawa.setup {
		overrides = function (colours)
			return {
				NormalFloat = { bg = "none" },
				FloatBorder = { bg = "none" },
				FloatTitle = { bg = "none" },
			}
		end
	}
	vim.cmd([[colorscheme kanagawa]])
end

M.override = function () -- Run after config
	vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { link = "FloatBorder" })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { link = "FloatBorder" })
end

return M
