local db = require('dashboard')

db.setup {
    theme = "hyper",
    config = {
        week_header =  {
            enable = true,
        },
        shortcut = {
            {
                icon = " ",
                desc = "Recent files",
                action = "Telescope oldfiles",
                key = "o"
            },
            {
                icon = " ",
                desc = "Files",
                group = "Label",
                action = "Telescope find_files",
                key = "f",
            },
            {
                icon = " ",
                desc = "Open CWD",
                group = "Number",
                action = "Neotree position=current",
                key = "c"
            },
            {
                icon = " ",
                desc = "dotfiles",
                group = "@variable",
                action = "cd " .. vim.fn.stdpath("config") .. " | :e init.lua",
                key = "d"
            },
        },
    },
}