-- Copilot workspace settings
--vim.g.copilot_workspace_folders = {"~/projects/pipedb", "~/projects/foodcoin", "~/projects/pembina-p10002"}
--vim.g.copilot_workspace_root = "~/projects"
--vim.g.copilot_workspace_auto_open = 1
--vim.g.copilot_workspace_auto_close = 1
--vim.g.copilot_workspace_auto_focus = 1

-- Use packer.nvim to manage plugins
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  
  use {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  }
end)

-- Set 2-space indentation for all files always
vim.o.tabstop = 2       -- Set the width of a tab to 2 spaces
vim.o.shiftwidth = 2    -- Set the number of spaces to use for each step of (auto)indent
vim.o.softtabstop = 2   -- Set the number of spaces a <Tab> counts for while performing editing operations
vim.o.expandtab = true  -- Convert tabs to spaces

-- Set clipboard to use the system clipboard
vim.o.clipboard = 'unnamedplus'

-- Disable mouse support
vim.o.mouse = ''

-- Viminfo settings
vim.o.viminfo = "'100,<50,s10,h"

-- Key mapping for inserting Ω with F2
vim.api.nvim_set_keymap('i', '<F2>', 'Ω', { noremap = true, silent = true })

-- Restore the cursor position when reopening a file
if vim.fn.has("autocmd") then
  vim.cmd [[
    augroup RestoreCursor
      autocmd!
      autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    augroup END
  ]]
end

-- Set indentation for Python files
vim.api.nvim_exec([[
  augroup python_indent
    autocmd!
    autocmd FileType python setlocal shiftwidth=2 softtabstop=2 expandtab
  augroup END
]], false)

