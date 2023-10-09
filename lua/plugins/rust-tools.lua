return {
  "simrat39/rust-tools.nvim",
  ft = "rust",

  opts = {
    showDisassembly = "never",
  },
  keys = {

    { "<F5>", "<cmd>RustDebuggables<cr>", desc = "Start Debugger", ft = "rust" },
  },
}
