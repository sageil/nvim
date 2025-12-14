return {
  "folke/snacks.nvim",
  opts = {
    words = { enabled = false },
    picker = {
      sources = {
        explorer = {
          show = true,
          auto_close = true,
          layout = { layout = { position = "float", preview = false } },
        },
      },
    },
  },
}
