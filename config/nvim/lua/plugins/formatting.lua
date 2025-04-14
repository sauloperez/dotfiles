return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = {
          "ruff_fix", -- To fix lint errors. (ruff with argument --fix)
          "ruff_format", -- To run the formatter. (ruff with argument format)
          "ruff_organize_imports",
        },
        html = { "prettierd" },
        css = { "prettierd" },
        javascript = {
          "prettierd",
        },
        javascriptreact = {
          "prettierd",
        },
        typescript = {
          "prettierd",
        },
        typescriptreact = {
          "prettierd",
        },
        lua = { "stylua" },
      },
    },
  },
}
