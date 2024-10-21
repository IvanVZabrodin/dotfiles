local M = {}

M.load = function ()
	local maps = require('options.keymaps')
	for _, map in ipairs(maps) do
		vim.keymap.set(map[1], map[2], map[3], {silent = true, noremap = true, expr = (map[5] ~= nil and map[5] or false), desc = (map[4] ~= nil and map[4] or '')})
	end
end

M.post = function () end

return M
