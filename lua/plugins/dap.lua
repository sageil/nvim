return {
  -- Modify nvim-dap
  {
    "mfussenegger/nvim-dap",
    -- stylua: ignore
    keys = {
      { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "Step Out" },
      { "<F5>", "<cmd>RustDebuggables<cr>", desc = "Start Debugger" },
    },
  },
}
