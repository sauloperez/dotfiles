return {
  -- Based on the unmerged PR https://github.com/LazyVim/LazyVim/pull/4440/
  -- avant's default config and my own ollama config
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "folke/snacks.nvim", -- for input provider snacks
    },
    opts = {
      provider = "ollama",
      providers = {
        openai = {
          endpoint = "https://api.openai.com/v1",
          model = "gpt-4o-mini",
        },
        ollama = {
          endpoint = "http://localhost:11434",
          model = "llama3.2:3b",
        },
      },
    },
  },
  {
    "Kaiser-Yang/blink-cmp-avante",
    lazy = true,
    specs = {
      {
        "saghen/blink.cmp",
        optional = true,
        opts = {
          sources = {
            default = { "avante" },
            providers = { avante = { module = "blink-cmp-avante", name = "Avante" } },
          },
        },
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    optional = true,
    ft = function(_, ft)
      vim.list_extend(ft, { "Avante" })
    end,
    opts = function(_, opts)
      opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
    end,
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        { "<leader>a", group = "ai" },
      },
    },
  },
}
