-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- local opt = vim.opt
local gon = require("helpers.get_os_name")
local home = os.getenv("HOME")
vim.g.python3_host_prog = "/usr/bin/python3"
vim.o.pumblend = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.o.winblend = 0
vim.o.spell = true
vim.o.spelllang = "en_ca"
vim.o.spellfile = home .. "/.config/nvim/spell/en.utf-8.add"
vim.o.spellsuggest = "best,10"
vim.opt.fillchars = { eob = " " }
--vim.bo.buflisted = true
