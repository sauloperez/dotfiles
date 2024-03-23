local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	-- Install a plugin
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
			require("nvim-tmux-navigation").setup({
				disable_when_zoomed = true, -- defaults to false
				keybindings = {
					left = "<C-h>",
					down = "<C-j>",
					up = "<C-k>",
					right = "<C-l>",
					last_active = "<C-\\>",
					next = "<C-Space>",
				},
			})
		end,
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
  },

  {
    'mzlogin/vim-markdown-toc',
    ft = { "markdown" },
  },

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

return plugins
