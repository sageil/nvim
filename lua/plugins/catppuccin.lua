return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        no_italic = false,
        no_bold = false,
        custom_highlights = function()
          return {
            LineNr = { fg = "#887777" },
          }
        end,
      })
    end,
  },
}
