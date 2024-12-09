local M = {}

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previ = require("telescope.previewers")
local conf = require("telescope.config").values

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")


local codedirs = {}--require('config.options').codedirs

local codedirpicker = function (opts)
	opts = opts or {}
	pickers.new(opts, {
		prompt_title = "Code Directories",
		finder = finders.new_table {
			results = codedirs
		},
		attach_mappings = function(prompt_bufnr, map)
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				local selection = action_state.get_selected_entry()
				--print(vim.inspect(selection))
				-- vim.api.nvim_put({ selection[1] }, "", false, true)
				vim.cmd("Neotree " .. selection[1])
			end)
			return true
		end,
		sorter = conf.generic_sorter(opts),
		previewer = previ.new_termopen_previewer {
			get_command = function(entry, status)
				return {[[C:/Users/i_zabrodin23/AppData/Local/nvim/dirred.exe]], entry[1]}
			end
		}
	}):find()
end



M.load = function ()
	local telescope = require('telescope')
	telescope.setup {}

	telescope.load_extension('fzy_native')
	telescope.load_extension('coc')

	vim.api.nvim_create_user_command('Cdp', codedirpicker, {})
	--codedirpicker()
end

return M
