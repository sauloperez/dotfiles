local options = {
  formatters_by_ft = {
    python = {
      "ruff_fix", -- To fix lint errors. (ruff with argument --fix)
      "ruff_format", -- To run the formatter. (ruff with argument format)
      "ruff_organize_imports",
    },
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
