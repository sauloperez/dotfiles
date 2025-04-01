require "nvchad.options"

local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

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

-- Highlight when yanking (copying) text
autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
