return {
  -- amongst your other plugins
  --{ "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = { direction = "float" },
    keys = {
      { "<C-/>", "<cmd>ToggleTerm<cr>", desc = "Open ToggleTerm" },
    },
    float_opts = { border = "curved" },
    win = { border = "rounded" },
    --config = true,
    -- dir = "git_dir",
    autochdir = true,
  },
}
