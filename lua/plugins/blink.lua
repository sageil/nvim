return {
  "saghen/blink.cmp",
  lazy = false,
  dependencies = { "rafamadriz/friendly-snippets", "fang2hou/blink-copilot" },
  version = "*",
  opts = {
    keymap = {
      preset = "enter",
      ["<M-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<Tab>"] = {
        "snippet_forward",
        "select_next",
        function() -- sidekick next edit suggestion
          return require("sidekick").nes_jump_or_apply()
        end,
        function() -- if you are using Neovim's native inline completions
          if vim.lsp.inline_completion ~= nil then
            return vim.lsp.inline_completion.get()
          end
        end,
        "fallback",
      },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
    },
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", "label_description", gap = 2 },
            { "kind_icon", "kind", gap = 1 },
          },
        },

        documentation = {
          window = {
            border = "rounded",
          },
        },
        border = "rounded",
        winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
      },
    },
  },
}
