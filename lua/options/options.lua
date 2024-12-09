return {
	fillchars = [[eob: ,fold: ,foldopen:,foldsep:│,foldclose:]],
	-- cursorcolumn = [[ %S%C%=%#LineNr#%{v:relnum?v:relnum:''}%#CursorLineNr#%{v:relnum?'':v:lnum}%#LineNr#││]],
	cursorcolumn = [[%#CursorColumn# %s%C%#CursorColumn#%= %#CursorColumn#%{v:relnum?v:relnum:''}%#CursorLineNr#%{v:relnum?'':v:lnum}%#CursorColumn#││]],
	tabstop = 4,
	theme = "gruvbox",
}
