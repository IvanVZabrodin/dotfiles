local U = {}

U.show_docs = function ()
	local cw = vim.fn.expand("<cword>")
	if vim.fn.index({"vim", "help"}, vim.bo.filetype) >= 0 then
		vim.api.nvim_command("h" .. cw)
	elseif vim.api.nvim_eval("coc#rpc#ready()") then
		vim.fn.CocActionAsync("doHover")
	else
		vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
	end
end

local telescopebi = require("telescope.builtin")
local telescopeext = require("telescope").extensions

local keymaps = {
	-- LSP --
	{"i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], nil, true},
	{"n", "q]", [[<Plug>(coc-diagnostic-next)]], "Next diagnostic"},
	{"n", "q[", [[<Plug>(coc-diagnostic-prev)]], "Previous diagnostic"},

	{"n", "qd", [[<Plug>(coc-definition)]], "Definition"},
	{"n", "qt", [[<Plug>(coc-type-definition)]], "Type definition"},
	{"n", "qi", [[<Plug>(coc-implementation)]], "Implementation"},
	{"n", "qr", [[<Plug>(coc-references)]], "References"},
	{"n", "q", [[<Plug>(coc-rename)]], "Rename"},
	{"n", "m", U.show_docs, "Show documentation"},
	{"n", "<leader>cs", [[<CMD>Commsect<CR>]]},

	-- Navigation --
	{"n", "\\", [[<CMD>Neotree float<CR>]], "Neotree (float)"},
	{"n", "<leader>nf", [[<CMD>Neotree left<CR>]], "Neotree (left)"},
	{"n", "<leader>B", [[<CMD>BufferLinePick<CR>]], "Pick buffer"},
	{"n", "<leader>cd", [[<CMD>cd %:h<CR>]], "Set directory to current"},

	{"n", "<leader>ff", telescopebi.find_files, "Find file (Telescope)"},
	{"n", "<leader>fb", telescopebi.buffers, "Find buffers (Telescope)"},
	{"n", "<leader>fh", telescopebi.help_tags, "Find help (Telescope)"},
	{"n", "<leader>fg", telescopebi.live_grep, "Live grep (Telescope)"},
	{"n", "<leader>fs", function () telescopeext.coc.document_symbols({}) end, "Find symbols (Telescope)"},

	-- Editing --
	{"n", "<C-c>", [[ciw]], "Change in word"},

	-- Misc --
	{"n", "<leader>vm", [[<CMD>mkview<CR>]], "Make view"},
	{"n", "<leader>vl", [[<CMD>loadview<CR>]], "Load view"},
}

return keymaps
