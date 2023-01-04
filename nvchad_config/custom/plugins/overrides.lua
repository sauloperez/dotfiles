local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "python",
    "javascript",
    "sql", -- requires tree-sitter CLI to be generated from the grammar definitions. Run `npm install -g tree-sitter-cli`
    "markdown",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
