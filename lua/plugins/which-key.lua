return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").setup({
      plugins = {
        spelling = {
          enabled = false,
        },
        presets = {
          z = false,
        },
      },
    })
    require("which-key").register({
      mode = "n",
      ["S"] = { name = "+Spell Check" },
      ["<leader>S"] = {
        name = "+Spell Check",
        t = { "<cmd>:set spell!<CR>", noremap = true, silent = true, "Toggle Spell Check" },
        a = { "zg", noremap = true, silent = true, "Add good to dictionary" },
        b = { "zw", noremap = true, silent = true, "Add bad to dictionary" },
        c = { "z=", noremap = true, silent = true, "Correct" },
        p = { "[s", noremap = true, silent = true, "Previous word" },
        n = { "]s", noremap = true, silent = true, "Next word" },
        -- h = { "<cmd><C-x>s<CR>", noremap = true, silent = true, "Check spelling" },
      },
    })
  end,
}
