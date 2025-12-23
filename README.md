# 💤 Sammy's `nvim` config

_A tailored development environment based on @folke's [LazyVim](https://github.com/lazyvim/lazyvim)_
My setup depends on [Wezterm](https://wezterm.org/). You can clone mine from [my configs](https://github.com/sageil/wezterm)
![nvim](assets/nvim.png)

## Requirements

- Neovim >= 0.11.4
- `git`
- `rg` [rg](https://github.com/BurntSushi/ripgrep)
- `fd` [fd](https://github.com/sharkdp/fd)
- `lazygit` [lazygit](https://github.com/jesseduffield/lazygit)
- Treesitter CLI [treesitter](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
- Terminal emulator like Ghostty, kitty, wezterm or alacritty. Screenshots are made on Mac with Wezterm as the emulator

## Features

- [x] IDE experience, out of the box
- [x] Debug Python, Go,Rust, and JavaScript out of the box.
- [x] Integrated tests for popular languages/frameworks (powered by Neotest)
- [x] Floating, persistent terminal
- [x] Editor context awareness and more powered by Treesitter.
- [x] Native vim spellcheck capabilities
- [x] LSP-sensitive completion context (import paths)
- [x] Copilot integration with VSCode like tab movement
- [x] A ton of themes

## How to use

1. Install neovim
2. Clone this repo `git clone https://github.com/sageil/nvim ~/.config/nvim`
3. Start nvim from your terminal emulator

## Disable Transparency

1. Open `init.lua`
2. Delete or comment the following lines:

```lua
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

```
