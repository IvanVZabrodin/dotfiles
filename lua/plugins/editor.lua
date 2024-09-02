-- For plugins that control what neovim looks like --
return {
	{ "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },
	{ "akinsho/bufferline.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-neo-tree/neo-tree.nvim" },
	{ "nvimdev/dashboard-nvim", event = "VimEnter" },
	{ "nvim-lualine/lualine.nvim" },
	{ "folke/noice.nvim" },
	{ "akinsho/toggleterm.nvim" },
	{ "fannheyward/telescope-coc.nvim" },
	{ "nvim-telescope/telescope-fzy-native.nvim" },
	{ "folke/which-key.nvim", event = "VeryLazy" },
	{ "RaafatTurki/hex.nvim" },
}