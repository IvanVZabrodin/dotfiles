return {
	{ "bufferline", strapped = true },
	{ "dashboard", strapped = true },
	{ "telescope", strapped = true },
	{ "incline", strapped = true },
	{
		"neo-tree",
		opts = {
			popup_border_style = "rounded",
			window = { position = "float" }
		}
	},
	{ "lualine" },
	{ "toggleterm" },
	{ "Comment" },
	{ "which-key" },
	{
		"nvim-treesitter.configs",
		opts = {
			ensure_installed = { "c", "cpp", "html", "javascript", "css", "python", "cmake", "lua", }
		}
	},
	{ "hex" },
	{ "lazydev" },
	{ "notify" },
}
