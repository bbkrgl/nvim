local dap, dapui = require("dap"), require("dapui")


-- Automatically open UI
dap.listeners.before.attach["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.launch["dapui_config"] = function()
  dapui.open()
end
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- ╭──────────────────────────────────────────────────────────╮
-- │ Icons                                                    │
-- ╰──────────────────────────────────────────────────────────╯
vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "⭐️", texthl = "", linehl = "", numhl = "" })

-- ╭──────────────────────────────────────────────────────────╮
-- │ Keybindings                                              │
-- ╰──────────────────────────────────────────────────────────╯
--keymap("n", "<Leader>da", "<CMD>lua require('dap').continue()<CR>", opts)
--keymap("n", "<Leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>", opts)
--keymap("n", "<Leader>dd", "<CMD>lua require('dap').continue()<CR>", opts)
--keymap("n", "<Leader>dh", "<CMD>lua require('dapui').eval()<CR>", opts)
--keymap("n", "<Leader>di", "<CMD>lua require('dap').step_into()<CR>", opts)
--keymap("n", "<Leader>do", "<CMD>lua require('dap').step_out()<CR>", opts)
--keymap("n", "<Leader>dO", "<CMD>lua require('dap').step_over()<CR>", opts)
--keymap("n", "<Leader>dt", "<CMD>lua require('dap').terminate()<CR>", opts)
--keymap("n", "<Leader>du", "<CMD>lua require('dapui').open()<CR>", opts)
--keymap("n", "<Leader>dc", "<CMD>lua require('dapui').close()<CR>", opts)
--
--keymap("n", "<Leader>dw", "<CMD>lua require('dapui').float_element('watches', { enter = true })<CR>", opts)
--keymap("n", "<Leader>ds", "<CMD>lua require('dapui').float_element('scopes', { enter = true })<CR>", opts)
--keymap("n", "<Leader>dr", "<CMD>lua require('dapui').float_element('repl', { enter = true })<CR>", opts)

vim.g.dap_virtual_text = true
