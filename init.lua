-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Function to apply transparency settings globally
local function set_transparency()
  vim.cmd([[
      hi normal guibg=none ctermbg=none
      hi normalnc guibg=none ctermbg=none
      hi signcolumn guibg=none ctermbg=none
      hi statusline guibg=none ctermbg=none
      hi statuslinenc guibg=none ctermbg=none
      hi vertsplit guibg=none ctermbg=none
      hi tabline guibg=none ctermbg=none
      hi tablinefill guibg=none ctermbg=none
      hi tablinesel guibg=none ctermbg=none
      hi neotreenormal guibg=none ctermbg=none
      hi neotreenormalnc guibg=none ctermbg=none
      hi neotreewinseparator guibg=none ctermbg=none
      hi neotreeendofbuffer guibg=none ctermbg=none
      hi endofbuffer guibg=none ctermbg=none
      hi normalfloat guibg=none ctermbg=none
      hi floatborder guibg=none ctermbg=none
      hi winblend guibg=none ctermbg=none
      hi winbar guibg=none ctermbg=none
      hi winbarnc guibg=none ctermbg=none
      hi whichkeyfloat ctermbg=none guibg=none
      hi whichkeygroup guibg=none ctermbg=none
      hi whichkeynormal guibg=none ctermbg=none
      hi lualine_c_inactive guibg=none ctermbg=none
      hi lualine_c_normal guibg=none ctermbg=none
      hi lualine_a guibg=none ctermbg=none
      hi lualine_b guibg=none ctermbg=none
      hi lualine_c guibg=none ctermbg=none
      hi lualine_x guibg=none ctermbg=none
      hi lualine_y guibg=none ctermbg=none
      hi lualine_z guibg=none ctermbg=none
      hi msgarea guibg=none ctermbg=none
      hi winseparator guibg=none ctermbg=none
      hi pmenu guibg=none ctermbg=none
      hi pmenusel guibg=none ctermbg=none
]])
end

-- Reapply transparency on ColorScheme event
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_transparency,
})
