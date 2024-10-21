local M = {}

local plugins = require('options.plugins')

M.load = function ()
	for _, plugin in ipairs(plugins) do
		if plugin.enabled ~= false then
			if plugin.strapped == true then
				require('options.strapped.' .. plugin[1]).load()
			else
				require(plugin[1]).setup(plugin.opts)
			end
		end
	end
end

M.post = function () end

return M
