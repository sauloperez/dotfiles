require "nvchad.mappings"

local map = vim.keymap.set

-- Muscle memory inherited from my old Vim config
map("n", "\\g", "<cmd> Telescope grep_string <CR>", { desc = "search string under cursor" })
map("n", ",gg", "<cmd> Telescope live_grep <CR>", { desc = "git grep" })
map("n", "<space>b", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true, desc = "find buffers" })
map("n", "<space><space>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true, desc = "find files" })

-- Copilot. Replaces the default <Tab> which is already taken
map(
  "i",
  "<C-J>",
  "copilot#Accept('<CR>')",
  { silent = true, expr = true, replace_keycodes = false, desc = "accept current Copilot suggestion" }
)

-- Mappings for Trouble
map("n", "<leader>xx", "<cmd>Trouble<CR>", { noremap = true, silent = true, desc = "trouble" })
map(
  "n",
  "<leader>xw",
  "<cmd>TroubleToggle workspace_diagnostics<CR>",
  { noremap = true, silent = true, desc = "trouble" }
)
map(
  "n",
  "<leader>xd",
  "<cmd>TroubleToggle document_diagnostics<CR>",
  { noremap = true, silent = true, desc = "trouble" }
)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", { noremap = true, silent = true, desc = "trouble" })
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>", { noremap = true, silent = true, desc = "trouble" })
map("n", "gR", "<cmd>TroubleToggle lsp_references<CR>", { noremap = true, silent = true, desc = "trouble" })
