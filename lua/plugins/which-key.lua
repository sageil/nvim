return {
  "folke/which-key.nvim",
  opts = {
    preset = "classic",
    spec = {
      { "<leader>cg", group = "Go" },
      { "<leader>cgj", "<cmd>GoAddTag<cr>", desc = "Add json tags" },
    },
    opts = { ft = { ".go" } },
  },

  win = {
    -- don't allow the popup to overlap with the cursor
    no_overlap = true,
    -- width = 1,
    -- height = { min = 4, max = 25 },
    -- col = 0,
    -- row = math.huge,
    -- border = "none",
    padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
    title = true,
    title_pos = "center",
    zindex = 1000,
    -- Additional vim.wo and vim.bo options
    bo = {},
    wo = {
      -- winblend = 100, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    },
  },
}
