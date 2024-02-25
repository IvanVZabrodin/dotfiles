local M = {}

local runners = {}

runners.python = function (filepath)
	return "python \"" .. filepath .. "\""
end

runners.cmake = function (_filepath) -- Assume cwd is top
	return "(cd build && cmake .. -G \"MinGW Makefile\")"
end

runners.gpp = function (_filepath) -- Assume running all files in directory
	return "g++ *.cpp *.c"
end

M.select_runner = function (ext)
	if ext == "py" then
		return runners.python
	elseif vim.tbl_contains({ "cpp", "c", "hpp", "h", "ipp", }, ext) then
		if vim.loop.fstat(vim.fn.getcwd() .. "CMakeLists.txt") then
			return runners.cmake
		else
			return runners.gpp
		end
	end

	return false
end

M.get_ext = function (filepath)
	local ext = filepath:match'^.+%.(.+)$'
	return ext
end

M.runner = function ()
	local filepath = vim.fn.expand('%:p')
	local ext = M.get_ext(filepath)

    print(filepath .. " " .. ext)

	local runner = M.select_runner(ext)
	
	if runner == false then
		return false
	end
	vim.api.nvim_command('tabnew | term')
    vim.api.nvim_input("i" .. runner(filepath))
	return true
end

return M
