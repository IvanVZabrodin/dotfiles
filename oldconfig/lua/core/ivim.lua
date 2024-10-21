-- The main file that brings everything together --
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '

require('core.options').load()

require('lazy').setup({
    spec = { { import = 'plugins' }, },
})

local theme = require('core.theme')
theme.load()

require('core.usrcommands').load()
require('core.plugger').load()
require('core.keymaps').load()
require('core.autocmds')

theme.override()
