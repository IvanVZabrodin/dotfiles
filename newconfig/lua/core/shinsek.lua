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

require('lazy').setup({
	spec = { { import = 'plugins' }, },
})

--TODO: Change the things --
local strap = require('newconfig.lua.core.strap')
local options = require('newconfig.lua.core.options')
local keymaps = require('newconfig.lua.core.keymaps')

strap.load()
options.load()
keymaps.load()

strap.post()
options.post()
keymaps.post()
