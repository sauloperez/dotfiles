---@type MappingsTable
local M = {}

M.general = {
	n = {
		-- Muscle memory inherited from my old Vim config
		["\\g"] = { "<cmd> Telescope grep_string <CR>", "search string under cursor" },
		[",gg"] = { "<cmd> Telescope live_grep <CR>", "git grep" },
		["<space>b"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
		["<space><space>"] = { "<cmd> Telescope find_files <CR>", "find files" },

		-- utilities
		["<leader>y"] = { '"+y' }, -- yank into system's clipboard

		-- DAP
		-- ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
		-- ["<leader>dpr"] = {
		-- 	function()
		-- 		require("dap-python").test_method()
		-- 	end,
		-- },
	},
	i = {
		["<C-J>"] = {
			"copilot#Accept('<CR>')",
			"accept current Copilot suggestion",
			opts = { silent = true, expr = true, replace_keycodes = false },
		}, -- replaces the default <Tab> which is already taken
	},
}

-- more keybinds!

return M
