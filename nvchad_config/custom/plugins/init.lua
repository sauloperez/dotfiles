local overrides = require("custom.plugins.overrides")

return {

	-- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

	-- Override plugin definition options
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- overrde plugin configs
	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	-- Install a plugin
	["kyazdani42/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},

	["max397574/better-escape.nvim"] = {
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	["klen/nvim-test"] = {
		config = function()
			require("nvim-test").setup({})
			require("nvim-test.runners.pytest"):setup({
				command = "echo 'hola'",

				-- file_pattern = "\\v(__tests__/.*|(spec|test))\\.(js|jsx|coffee|ts|tsx)$", -- determine whether a file is a testfile
				-- find_files = { "{name}.test.{ext}", "{name}.spec.{ext}" }, -- find testfile for a file

				filename_modifier = nil, -- modify filename before tests run (:h filename-modifiers)
				-- working_directory = nil, -- set working directory (cwd by default)
			})
		end,
	},

	-- code formatting, linting etc
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	["christoomey/vim-tmux-navigator"] = {},

	-- Tim Pope's realm
	["tpope/vim-surround"] = {},
	["tpope/vim-fugitive"] = {},

	-- Focus mode
	-- Call TZAtaraxis for Goyo equivalent
	["Pocco81/true-zen.nvim"] = {
		config = function()
			require("true-zen").setup({})
		end,
	},
	["folke/twilight.nvim"] = {
		config = function()
			require("twilight").setup({})
		end,
	},

	-- Databases
	["vim-scripts/SQLUtilities"] = {},

	["github/copilot.vim"] = {},

	-- remove plugin
	-- ["hrsh7th/cmp-path"] = false,
}
