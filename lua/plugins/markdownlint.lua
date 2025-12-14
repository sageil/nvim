return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.expand("$HOME/.config/nvim/custom_config/markdownlint-cli2.yaml"), "--" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            vim.fn.expand("$HOME/.config/nvim/custom_config/markdownlint-cli2.yaml"),
            "--fix",
            "$FILENAME",
          },
        },
      },
    },
  },
}
