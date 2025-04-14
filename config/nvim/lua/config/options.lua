-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ","

-- Disable annoying animations
vim.g.snacks_animate = false

vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_python_lsp = "basedpyright"

vim.opt.incsearch = true

vim.cmd("iabbrev rem import remote_pdb; remote_pdb.set_trace(host='0.0.0.0', port=4445)")
