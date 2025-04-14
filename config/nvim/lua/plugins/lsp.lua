return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        ltex_plus = {},
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "dmypy" },
        sh = { "shellcheck" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      },
    },
  },
}
