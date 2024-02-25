local telescope_builtin = require("telescope.builtin")
local legendary = require("legendary")

vim.keymap.set("n", "<leader>tf", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>tg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>tb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>th", telescope_builtin.help_tags, {})

vim.keymap.set("n", "<leader>L", legendary.find, {})

vim.keymap.set("n", "<leader>cd", ":cd %:h<CR>", {})

vim.keymap.set("n", "<leader>nf", ":Neotree float reveal<CR>")

vim.keymap.set("n", "<leader>bl", ":BufferLinePick<CR>")
