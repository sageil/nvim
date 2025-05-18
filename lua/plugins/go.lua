if true then
  return {}
end

return {
  "ray-x/go.nvim",
  dependencies = {
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()

    -- Run gofmt + goimport on save
    local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        require("go.format").goimport()
      end,
      group = format_sync_grp,
    })
  end,
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()',
  keys = {
    group = "GO",
    ["g"] = { name = "+Go", group = "Go" },
    { "<leader>cg", desc = "Go", ft = "go" },
    { "<leader>cgj", "<cmd>GoAddTag<cr>", desc = "Add json tags", ft = "go" },
    { "<leader>cga", "<cmd>GoAddTag mapstructure<cr>", desc = "Add mapstructure tags", ft = "go" },
    { "<leader>cge", "<cmd>GoAddTag env<cr>", desc = "Add env tags", ft = "go" },
    { "<leader>cgy", "<cmd>GoAddTag yaml<cr>", desc = "Add YAML tags", ft = "go" },
    { "<leader>cgr", "<cmd>GoAddTag validate:required<cr>", desc = "Add Swagger validate required tags", ft = "go" },
    { "<leader>cgo", "<cmd>GoAddTag validate:optional<cr>", desc = "Add Swagger validate optional tags", ft = "go" },

    { "<leader>cgm", "<cmd>GoImplements<cr>", desc = "Find implementions of this method", ft = "go" },
  },
}
