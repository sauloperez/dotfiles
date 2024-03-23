local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------
g.mapleader = ','
g.copilot_no_tab_map = true
g.copilot_assume_mapped = true

-------------------------------------- options ------------------------------------------
opt.incsearch = true

vim.cmd("iabbrev rem import remote_pdb; remote_pdb.set_trace(host='0.0.0.0', port=4445)")

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Use internal formatting for bindings like gq.
autocmd("LspAttach", {
	callback = function(args)
		vim.bo[args.buf].formatexpr = nil
	end,
})
