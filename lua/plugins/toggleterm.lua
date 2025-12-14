return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = { direction = "float" },
    float_opts = { border = "curved" },
    win = { border = "rounded" },
    autochdir = true,
    shell = vim.o.shell,
  },
}
