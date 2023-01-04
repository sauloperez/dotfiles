local autocmd = vim.api.nvim_create_autocmd

vim.g.mapleader = ','

vim.cmd("iabbrev rem import remote_pdb; remote_pdb.set_trace(host='0.0.0.0', port=4445)")

vim.opt.incsearch = true

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
