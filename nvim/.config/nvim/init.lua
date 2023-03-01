local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require "options"
require "keymaps"
-- require "plugins"
require('lazy').setup('plugins')
require "lsp"
require "cmpconf"
-- require("poimandres").setup()
-- vim.cmd [[colorscheme nightfox]]
-- vim.cmd [[colorscheme iceberg]]
-- vim.cmd [[colorscheme horizon]]
vim.cmd [[colorscheme catppuccin-mocha]]
-- vim.cmd [[colorscheme poimandres]]
