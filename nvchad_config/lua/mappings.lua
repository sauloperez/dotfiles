require "nvchad.mappings"

local map = vim.keymap.set

-- Muscle memory inherited from my old Vim config
map("n", "\\g", "<cmd> Telescope grep_string <CR>", { desc = "search string under cursor"})
map("n", ",gg", "<cmd> Telescope live_grep <CR>", { desc = "git grep" })
map('n', '<space>b', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true, desc = 'find buffers' })
map('n', '<space><space>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true, desc = 'find files' })

-- Utilities
map('n', '<leader>y', '"+y', { noremap = true, silent = true })

-- Copilot. Replaces the default <Tab> which is already taken 
map('i', '<C-J>', "copilot#Accept('<CR>')", { silent = true, expr = true, replace_keycodes = false, desc = 'accept current Copilot suggestion' })

-- Mappings for Trouble
map('n', '<leader>xx', '<cmd>Trouble<CR>', { noremap = true, silent = true, desc = 'trouble' })
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>', { noremap = true, silent = true, desc = 'trouble' })
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', { noremap = true, silent = true, desc = 'trouble' })
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', { noremap = true, silent = true, desc = 'trouble' })
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<CR>', { noremap = true, silent = true, desc = 'trouble' })
map('n', 'gR', '<cmd>TroubleToggle lsp_references<CR>', { noremap = true, silent = true, desc = 'trouble' })

-- GP mappings
--
local function keymapOptions(desc)
    return { noremap = true, silent = true, nowait = true, desc = "GPT prompt " .. desc }
end

-- Chat commands
map({"n", "i"}, "<C-g>c", "<cmd>GpChatNew<CR>", keymapOptions("New Chat"))
map({"n", "i"}, "<C-g>t", "<cmd>GpChatToggle<CR>", keymapOptions("Toggle Chat"))
map({"n", "i"}, "<C-g>f", "<cmd>GpChatFinder<CR>", keymapOptions("Chat Finder"))
map("v", "<C-g>c", ":<C-u>'<,'>GpChatNew<CR>", keymapOptions("Visual Chat New"))
map("v", "<C-g>p", ":<C-u>'<,'>GpChatPaste<CR>", keymapOptions("Visual Chat Paste"))
map("v", "<C-g>t", ":<C-u>'<,'>GpChatToggle<CR>", keymapOptions("Visual Toggle Chat"))

-- Split, vsplit, and tabnew mappings
map({"n", "i"}, "<C-g><C-x>", "<cmd>GpChatNew split<CR>", keymapOptions("New Chat split"))
map({"n", "i"}, "<C-g><C-v>", "<cmd>GpChatNew vsplit<CR>", keymapOptions("New Chat vsplit"))
map({"n", "i"}, "<C-g><C-t>", "<cmd>GpChatNew tabnew<CR>", keymapOptions("New Chat tabnew"))
map("v", "<C-g><C-x>", ":<C-u>'<,'>GpChatNew split<CR>", keymapOptions("Visual Chat New split"))
map("v", "<C-g><C-v>", ":<C-u>'<,'>GpChatNew vsplit<CR>", keymapOptions("Visual Chat New vsplit"))
map("v", "<C-g><C-t>", ":<C-u>'<,'>GpChatNew tabnew<CR>", keymapOptions("Visual Chat New tabnew"))

-- Prompt commands
map({"n", "i"}, "<C-g>r", "<cmd>GpRewrite<CR>", keymapOptions("Inline Rewrite"))
map({"n", "i"}, "<C-g>a", "<cmd>GpAppend<CR>", keymapOptions("Append (after)"))
map({"n", "i"}, "<C-g>b", "<cmd>GpPrepend<CR>", keymapOptions("Prepend (before)"))
map("v", "<C-g>r", ":<C-u>'<,'>GpRewrite<CR>", keymapOptions("Visual Rewrite"))
map("v", "<C-g>a", ":<C-u>'<,'>GpAppend<CR>", keymapOptions("Visual Append (after)"))
map("v", "<C-g>b", ":<C-u>'<,'>GpPrepend<CR>", keymapOptions("Visual Prepend (before)"))
map("v", "<C-g>i", ":<C-u>'<,'>GpImplement<CR>", keymapOptions("Implement selection"))

-- Popup and additional commands
map({"n", "i"}, "<C-g>gp", "<cmd>GpPopup<CR>", keymapOptions("Popup"))
map({"n", "i"}, "<C-g>ge", "<cmd>GpEnew<CR>", keymapOptions("GpEnew"))
map({"n", "i"}, "<C-g>gn", "<cmd>GpNew<CR>", keymapOptions("GpNew"))
map({"n", "i"}, "<C-g>gv", "<cmd>GpVnew<CR>", keymapOptions("GpVnew"))
map({"n", "i"}, "<C-g>gt", "<cmd>GpTabnew<CR>", keymapOptions("GpTabnew"))
map("v", "<C-g>gp", ":<C-u>'<,'>GpPopup<CR>", keymapOptions("Visual Popup"))
map("v", "<C-g>ge", ":<C-u>'<,'>GpEnew<CR>", keymapOptions("Visual GpEnew"))
map("v", "<C-g>gn", ":<C-u>'<,'>GpNew<CR>", keymapOptions("Visual GpNew"))
map("v", "<C-g>gv", ":<C-u>'<,'>GpVnew<CR>", keymapOptions("Visual GpVnew"))
map("v", "<C-g>gt", ":<C-u>'<,'>GpTabnew<CR>", keymapOptions("Visual GpTabnew"))

-- Toggle Context and Whisper commands
map({"n", "i"}, "<C-g>x", "<cmd>GpContext<CR>", keymapOptions("Toggle Context"))
map("v", "<C-g>x", ":<C-u>'<,'>GpContext<CR>", keymapOptions("Visual Toggle Context"))
map({"n", "i", "v", "x"}, "<C-g>s", "<cmd>GpStop<CR>", keymapOptions("Stop"))
map({"n", "i", "v", "x"}, "<C-g>n", "<cmd>GpNextAgent<CR>", keymapOptions("Next Agent"))

-- Whisper commands
map({"n", "i"}, "<C-g>ww", "<cmd>GpWhisper<CR>", keymapOptions("Whisper"))
map("v", "<C-g>ww", ":<C-u>'<,'>GpWhisper<CR>", keymapOptions("Visual Whisper"))
map({"n", "i"}, "<C-g>wr", "<cmd>GpWhisperRewrite<CR>", keymapOptions("Whisper Inline Rewrite"))
map({"n", "i"}, "<C-g>wa", "<cmd>GpWhisperAppend<CR>", keymapOptions("Whisper Append (after)"))
map({"n", "i"}, "<C-g>wb", "<cmd>GpWhisperPrepend<CR>", keymapOptions("Whisper Prepend (before)"))
map("v", "<C-g>wr", ":<C-u>'<,'>GpWhisperRewrite<CR>", keymapOptions("Visual Whisper Rewrite"))
map("v", "<C-g>wa", ":<C-u>'<,'>GpWhisperAppend<CR>", keymapOptions("Visual Whisper Append (after)"))
map("v", "<C-g>wb", ":<C-u>'<,'>GpWhisperPrepend<CR>", keymapOptions("Visual Whisper Prepend (before)"))

map({"n", "i"}, "<C-g>wp", "<cmd>GpWhisperPopup<CR>", keymapOptions("Whisper Popup"))
map({"n", "i"}, "<C-g>we", "<cmd>GpWhisperEnew<CR>", keymapOptions("Whisper Enew"))
map({"n", "i"}, "<C-g>wn", "<cmd>GpWhisperNew<CR>", keymapOptions("Whisper New"))
map({"n", "i"}, "<C-g>wv", "<cmd>GpWhisperVnew<CR>", keymapOptions("Whisper Vnew"))
map({"n", "i"}, "<C-g>wt", "<cmd>GpWhisperTabnew<CR>", keymapOptions("Whisper Tabnew"))
map("v", "<C-g>wp", ":<C-u>'<,'>GpWhisperPopup<CR>", keymapOptions("Visual Whisper Popup"))
map("v", "<C-g>we", ":<C-u>'<,'>GpWhisperEnew<CR>", keymapOptions("Visual Whisper Enew"))
map("v", "<C-g>wn", ":<C-u>'<,'>GpWhisperNew<CR>", keymapOptions("Visual Whisper New"))
map("v", "<C-g>wv", ":<C-u>'<,'>GpWhisperVnew<CR>", keymapOptions("Visual Whisper Vnew"))
map("v", "<C-g>wt", ":<C-u>'<,'>GpWhisperTabnew<CR>", keymapOptions("Visual Whisper Tabnew"))
