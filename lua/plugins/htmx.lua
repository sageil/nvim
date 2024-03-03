return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        htmx = {
          cmd = {
            "htmx-lsp",
          },
          filetypes = { "html" },
          root_dir = require("lspconfig").util.find_git_ancestor,
          single_file_support = true,
        },
      },
    },
  },
}
