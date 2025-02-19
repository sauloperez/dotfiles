local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local log = require "null-ls.logger"
local present, null_ls = pcall(require, "null-ls")
local util = require "lspconfig/util"
local path = util.path

if not present then
  return
end

local b = null_ls.builtins

local function poetry_mypy_path(dir)
  local venv = vim.fn.trim(vim.fn.system("poetry --directory " .. dir .. " env info -p"))
  log:debug(string.format("venv=%s", venv))
  return path.join(venv, "bin", "dmypy")
end

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.diagnostics.eslint_d, -- this keeps linting consistent with JS project configurations
  b.formatting.prettierd,

  -- Python
  b.formatting.ruff,
  b.diagnostics.ruff,
  b.diagnostics.mypy.with {
    timeout = 10000,
    dynamic_command = function()
      return poetry_mypy_path "backend"
    end,
    args = function(params)
      return {
          "run",
          "--timeout", "500",
          "--",
          "--hide-error-context",
          "--no-color-output",
          "--show-absolute-path",
          "--show-column-numbers",
          "--show-error-codes",
          "--no-error-summary",
          "--no-pretty",
          "--shadow-file",
          params.bufname,
          params.temp_path,
          params.bufname,
      }
  end,
  },

  -- Shell
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr) -- format on save
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
