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
}
