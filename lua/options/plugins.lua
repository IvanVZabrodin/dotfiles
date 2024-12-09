return {
	{ "bufferline", strapped = true },
	{ "dashboard", strapped = true },
	{ "telescope", strapped = true },
	{ "incline", strapped = true },
	{
		"neo-tree",
		opts = {
			popup_border_style = "rounded",
			-- window = { position = "float", },
			filesystem = {
				filtered_items = {
					visible = true,
				},
			},
		},
	},
	{ "lualine",
		opts = {
			sections = {
				lualine_z = {
					{ "%3l:%-2.(%c%V%)", type = 'stl' },
				},
			},
		},
	},
	{ "toggleterm" },
	{ "Comment" },
	{ "which-key" },
	{
		"nvim-treesitter.configs",
		opts = {
			ensure_installed = { "c", "cpp", "html", "javascript", "css", "python", "cmake", "lua", },
		},
	},
	{ "hex" },
	{ "lazydev" },
	{ "notify" },
}
