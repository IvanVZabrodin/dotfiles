-- For keymaps --
local mappings = require('config.mappings')
local map = vim.keymap.set
local stdopt = {
	silent = true,
	noremap = true
}

local M = {}
local U = {}

U.show_docs = function ()
	local cw = vim.fn.expand('<cword>')
	if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
		vim.api.nvim_command('h' .. cw)
	elseif vim.api.nvim_eval('coc#rpc#ready()') then
		vim.fn.CocActionAsync('doHover')
	else
		vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
	end
end

M.load_lsp = function ()
	local m = mappings.lsp

	map('i', m.confirm_autocomplete, [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {
		silent = true,
		expr = true,
		noremap = true,
		replace_keycodes = false
	})

	map('n', m.next_diagnostic, [[<Plug>(coc-diagnostic-next)]], {silent = true})
	map('n', m.prev_diagnostic, [[<Plug>(coc-diagnostic-prev)]], {silent = true})

	map('n', m.definition, [[<Plug>(coc-definition)]], {silent = true})
	map('n', m.type_definition, [[<Plug>(coc-type-definition)]], {silent = true})
	map('n', m.implementation, [[<Plug>(coc-implementation)]], {silent = true})
	map('n', m.references, [[<Plug>(coc-references)]], {silent = true})

	map('n', m.rename, [[<Plug>(coc-rename)]], {silent=true})

	map('n', m.show_docs, [[<CMD>lua U.show_docs()<CR>]], {silent=true})
end

M.load_navigation = function ()
	local m = mappings.navigation

	map('n', m.filesystem, [[<CMD>Neotree<CR>]], {silent=true})
	map('n', m.bufferline, [[<CMD>BufferLinePick<CR>]], {silent=true})

	local tm = m.telescope
	local telescopebi = require('telescope.builtin')

	map('n', tm.find_files, telescopebi.find_files)
end

M.load = function ()
	M.load_lsp()
	M.load_navigation()
end

return M
