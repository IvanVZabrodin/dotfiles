local M = {}

M.load = function ()
	bufferline = require('bufferline')
	bufferline.setup {
		options = {
			numbers = 'ordinal',
			indicator = {
				icon = 'H',
				style = 'icon',
			},
			hover = {
				enabled = true,
				delay = 200,
				reveal = {'close'},
			},
			diagnostics = 'coc',
			color_icons = true,
			separator_style = 'slant',
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match('error') and ' ' or ' '
				return ' ' .. icon .. count
			end

		},
	}
end

return M
