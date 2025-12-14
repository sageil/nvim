-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end
-- Disable arrow keys
key_mapper("", "<up>", "<nop>")
key_mapper("", "<down>", "<nop>")
key_mapper("", "<left>", "<nop>")
key_mapper("", "<right>", "<nop>")

--delete default keymaps for Ctrl+/ Ctrl+_
vim.keymap.del("n", "<C-/>")
vim.keymap.del("n", "<C-_>")
-- ToggleTerm
vim.keymap.set({ "n", "t" }, "<C-/>", "<cmd>ToggleTerm<cr>", { noremap = true, desc = "Toggle Terminal" })
vim.keymap.set({ "n", "t" }, "<C-_>", "<cmd>ToggleTerm<cr>", { noremap = true, desc = "Toggle Terminal" })
