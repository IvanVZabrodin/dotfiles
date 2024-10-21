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

local strap = require('core.strap')
local options = require('core.options')
local keymaps = require('core.keymaps')
local theme = require('core.theme')

options.load()

require('lazy').setup({
	spec = { { import = 'plugins' }, },
})

theme.load()
strap.load()
keymaps.load()

options.post()
theme.post()
strap.post()
keymaps.post()
