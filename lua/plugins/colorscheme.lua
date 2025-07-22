if true then
  return {}
end
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine-main",
--   config = function()
--     vim.cmd("colorscheme rose-pine-main")
--   end,
-- }
return {
  -- add gruvbox
  { "rose-pine/neovim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.schedule(function()
          if vim.o.background == "light" then
            vim.cmd("colorscheme rose-pine-dawn")
          else
            vim.cmd("colorscheme rose-pine-main")
          end
        end)
      end,

      --"rose-pine-main",
    },
  },
}
