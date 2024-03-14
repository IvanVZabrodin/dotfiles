local plugs = require('config.plugins')

local M = {}

M.load = function ()
	for _, plug in ipairs(plugs) do
		if plug.opts ~= nil then
			require(plug[1]).setup(plug.opts)
		else
			require('setup.' .. plug[1]).load()
		end
	end
end

return M
