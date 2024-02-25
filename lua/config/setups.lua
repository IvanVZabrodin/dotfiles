local bufferline = require('bufferline')
bufferline.setup {
	options = {
		numbers = 'ordinal',
		indicator = {
			icon = '▎',
			style = 'icon',
		},
		hover = {
			enabled = true,
			delay = 200,
			reveal = {'close'},
		},
		diagnostics = 'nvim_lsp',
		color_icons = true,
		separator_style = 'slant',
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match('error') and ' ' or ' '
			return ' ' .. icon .. count
		end

	},
}

local dressing = require('dressing')
dressing.setup {}

local neotree = require('neo-tree')
neotree.setup {}

local lualine = require('lualine')
lualine.setup {}

local telescope = require('telescope')
telescope.setup {}

telescope.load_extension('fzy_native')
telescope.load_extension('projects')

local trouble = require('trouble')
trouble.setup {
	popup_border_style = "rounded",
}

local noice = require('noice')
noice.setup {
	presets = {
		bottom_search = false, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = true, -- add a border to hover docs and signature help
	},
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
		  ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
		  ['vim.lsp.util.stylize_markdown'] = true,
		  ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
		},
	},
}

local toggleterm = require('toggleterm')
toggleterm.setup {}

local project = require('project_nvim')
project.setup {
	patterns = { 'CMakeLists.txt', '.git', 'package.json', },
}
