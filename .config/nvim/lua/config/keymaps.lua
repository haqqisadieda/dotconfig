-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local trn = ""
local keymaps = {
  mode = { "n", "v" },
  ["<F5>"] = { ":lua require'dap'.continue()<CR> ", "Debug" },
  ["<F3>"] = { ":lua require'dap'.step_over()<CR> ", "Debug Step Over" },
  ["<F2>"] = { ":lua require'dap'.step_into()<CR> ", "Debug Step Into" },
  ["<F12>"] = { ":lua require'dap'.step_out()<CR> ", "Debug Step Out" },
  ["<leader>d"] = {
    name = "+debug",
    b = { ":lua require'dap'.toggle_breakpoint()<CR>", "Pin Breakpoint" },
    B = {
      ":lua require'dap'.toggle_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>",
      "Breakpoint with Condition",
    },
    l = { ":lua require'dap'.toggle_breakpoint(vim.fn.input('log Point Message: '))<CR>", "Breakpoint with Log" },
    r = { ":lua require'dap'.repl.open()<CR>", "Open REPL" },
    t = { ":lua require'dap-go'.debug_test()<CR>", "Debut Test" },
  },
  ["<leader>t"] = {
    name = "+terminal",
    f = { "<cmd>ToggleTerm direction=float<cr>" .. trn, "Float" },
    h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm size=50 direction=vertical<cr>" .. trn, "Vertical" },
  },
}
local wk = require("which-key")
wk.register(keymaps)
