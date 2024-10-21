local M = {}

local codeDirs = {
	[[C:/Users/i_zabrodin23/Code]],
	[[C:/Users/i_zabrodin23/Code/Python Soc]],
}

M.load = function ()
	vim.api.nvim_create_user_command('CodeDirs', function () return "awd" end, {})
	vim.api.nvim_create_user_command('Commsect', function ()
		vim.ui.input({prompt = "Section name: "}, function (input)
			local commentchar = string.sub(vim.bo.commentstring, 0, string.find(vim.bo.commentstring, " ") - 1)
			local l = 100 - string.len(input)
			local fullstr = commentchar .. string.rep('-', math.floor(l / 2)) .. input .. string.rep('-', math.ceil(l / 2)) .. commentchar
			vim.api.nvim_put({fullstr}, "b", true, false)
		end)
	end, {})
end

return M
