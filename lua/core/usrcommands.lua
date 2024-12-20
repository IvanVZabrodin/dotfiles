local M = {}

M.load = function ()
	vim.api.nvim_create_user_command('Commsect', function ()
		vim.ui.input({prompt = "Section name: "}, function (input)
			local commentchar = string.sub(vim.bo.commentstring, 0, string.find(vim.bo.commentstring, " ") - 1)
			local l = 100 - string.len(input)
			local fullstr = commentchar .. string.rep('-', math.floor(l / 2)) .. input .. string.rep('-', math.ceil(l / 2)) .. commentchar
			vim.api.nvim_put({fullstr}, "b", true, false)
		end)
	end, {})

	vim.api.nvim_create_user_command('ImpFile', function ()
		local filename = vim.api.nvim_buf_get_name(0)
	end, {})
end

M.post = function () end

return M
