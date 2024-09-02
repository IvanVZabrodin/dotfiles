return {
	{ "bufferline" },
	{ "dashboard" },
	{ "noice" },
	{ "telescope" },
	{
		"neo-tree",
		opts = {
			popup_border_style = "rounded",
			window = { position = "float" }
		}
	},
	{ "lualine", opts = {} },
	{ "toggleterm", opts = {} },
	{ "Comment", opts = {} },
	{ "which-key", opts = {} },
	{ "nvim-treesitter.configs", opts = {
			ensure_installed = { "c", "cpp", "html", "javascript", "css", "python", "cmake", "lua", },
		}
	},
	{ "hex", opts = {} },
	{ "lazydev", opts = {} },
}
