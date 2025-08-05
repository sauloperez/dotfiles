return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        ltex_plus = {},
        ts_ls = {
          enabled = true,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        python = { "dmypy" },
        sh = { "shellcheck" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint_d",
        "prettierd",
        "mypy",
      },
    },
  },
}
