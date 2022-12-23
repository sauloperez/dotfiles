local M = {}

M.general = {
  n = {
    ["\\g"] = { "<cmd> Telescope grep_string <CR>", "search string under cursor" },
    [",gg"] = { "<cmd> Telescope live_grep <CR>", "git grep" },
    ["<space>b"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<space><space>"] = { "<cmd> Telescope find_files <CR>", "find files" },

    -- utilities
    ["<leader>y"] = { "\"+y" }, -- yank into system's clipboard
  },
}

-- more keybinds!

return M
