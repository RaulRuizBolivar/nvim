-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

----- Increment / Decrement -----
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

----- OIL -----
keymap.set("n", "<leader>l", "<CMD>Oil<CR>", { desc = "Open parent directory Oil" })

----- OBSIDIAN -----
-- keymap.set(
--   "n",
--   "<leader>oc",
--   "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
--   { desc = "Obsidian Check Checkbox" }
-- )
-- keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
-- keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
-- keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
-- keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
-- keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
-- keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
-- keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

----- Copilot Chat -----
keymap.set("n", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Chat" })
keymap.set("n", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Explain" })
keymap.set("v", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Chat" })
keymap.set("v", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Explain" })

----- Harpoon -----
keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add File" })
keymap.set("n", "<C-y>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "List" })
keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
keymap.set("n", "<C-t>", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
keymap.set("n", "<C-w>", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
keymap.set("n", "<C-f>", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")
keymap.set("n", "<leader>hl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "List" })
keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "File 1" })
keymap.set("n", "<leader>ht", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "File 2" })
keymap.set("n", "<leader>hw", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "File 3" })
keymap.set("n", "<leader>hf", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "File 4" })

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft) -- Navigate to the left pane
keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown) -- Navigate to the bottom pane
keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp) -- Navigate to the top pane
keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight) -- Navigate to the right pane

----- Copilot -----
keymap.set("i", "<C-s>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

----- Zen mode -----
keymap.set("n", "<leader>z", ":ZenMode<CR>", opts)
