local dap = require('dap')
local dapui = require 'dapui'
local nmap = require 'utils'.nmap

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.stdpath "data" .. "/mason/bin/OpenDebugAD7"
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      if vim.fn.filereadable(vim.fn.expand("%:r") ..  ".g") then
        return vim.fn.expand("%:r") .. ".g"
      else
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  }
}

vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })
nmap { '<F5>', function()
  vim.g.last_dbg_buf = vim.api.nvim_get_current_buf()
  require 'sidebar-nvim'.close()
  require 'dapui'.open()
  require 'dap'.continue()
end }

nmap { '<F17>', function()
  vim.api.nvim_set_current_buf(vim.g.last_dbg_buf)
  require 'dapui'.close()
  require 'dap'.terminate()
  require 'sidebar-nvim'.open()
end }
nmap { '<F6>', require 'dap'.toggle_breakpoint }
nmap { '<F7>', require 'dap'.step_over }
nmap { '<F8>', require 'dap'.step_into }


dapui.setup()
