local overrides = require "configs.overrides"

return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "configs.lspconfig"
    end,
  },

  "nvim-lua/plenary.nvim",

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end,
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  -- override plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install other plugins
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    config = function()
      require("nvim-tmux-navigation").setup {
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
          last_active = "<C-\\>",
          next = "<C-Space>",
        },
      }
    end,
  },

  {
    "chrisbra/matchit",
    lazy = false,
  },

  -- Tim Pope's realm
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
  },
  {
    "tpope/vim-repeat",
    lazy = false,
  },

  -- Focus mode
  -- Call TZAtaraxis for Goyo equivalent
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
  },
  -- Dims all but the portions of the code that you're editing
  {
    "folke/twilight.nvim",
    cmd = { "Twilight" },
  },

  {
    "github/copilot.vim",
    lazy = false,
  },

  {
    "uga-rosa/translate.nvim",
    cmd = { "Translate" },
    config = function()
      require("translate").setup {
        default = {
          output = "replace",
        },
      }
    end,
  },

  {
    "mzlogin/vim-markdown-toc",
    ft = { "markdown" },
  },

  -- pretty diagnostics panel
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    config = function()
      require("trouble").setup()
    end,
  },

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "openai",
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o",
        timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
        temperature = 0,
        max_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
        --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    }
  }


  -- DAP
  -- {
  -- 	"rcarriga/nvim-dap-ui",
  -- 	dependencies = "mfussenegger/nvim-dap",
  -- 	config = function()
  -- 		local dap = require("dap")
  -- 		local dapui = require("dapui")
  -- 		dapui.setup()
  -- 		dap.listeners.after.event_initialized["dapui_config"] = function()
  -- 			dapui.open()
  -- 		end
  -- 		dap.listeners.before.event_terminated["dapui_config"] = function()
  -- 			dapui.close()
  -- 		end
  -- 		dap.listeners.before.event_exited["dapui_config"] = function()
  -- 			dapui.close()
  -- 		end
  -- 	end,
  -- },
  -- { "mfussenegger/nvim-dap" },
  -- {
  -- 	"mfussenegger/nvim-dap-python",
  -- 	ft = "python",
  -- 	dependencies = {
  -- 		"mfussenegger/nvim-dap-python",
  -- 		"rcarriga/nvim-dap-ui",
  -- 	},
  -- 	config = function()
  -- 		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  -- 		require("dap-python").setup(path)
  -- 	end,
  -- },
  --
  --  {
  --    "PedramNavid/dbtpal",
  --    config = function()
  --      local dbt = require('dbtpal')
  --      dbt.setup {
  --          path_to_dbt = "dbt"
  --      }
  --      require('telescope').load_extension('dbtpal')
  --    end,
  --  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}
