local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	-- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
	b.diagnostics.eslint_d, -- this keeps linting consistent with JS project configurations
	b.formatting.prettierd,

	-- Python
	b.formatting.ruff,
	b.diagnostics.ruff,
  b.diagnostics.mypy,

	-- Shell
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
}

null_ls.setup({
	debug = true,
	sources = sources,
	on_attach = function(client, bufnr) -- format on save
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
