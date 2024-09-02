local M = {}
local maps = require('options.keymaps')

M.load = function ()
	for _, map in ipairs(maps[0]) do
		vim.keymap.set(map[0], map[1], map[2], {silent = true, noremap = true, desc = (map[3] ~= nil and map[3] or ''})
	end
end

M.post = function () end

return M
