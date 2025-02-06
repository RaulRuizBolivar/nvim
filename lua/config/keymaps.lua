-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

----- Increment / Decrement -----
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

----- OIL -----
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory Oil" })

----- OBSIDIAN -----
vim.keymap.set(
  "n",
  "<leader>oc",
  "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
  { desc = "Obsidian Check Checkbox" }
)
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

----- Copilot Chat -----
vim.keymap.set("n", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Chat" })
vim.keymap.set("n", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Explain" })

vim.keymap.set("v", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Chat" })
vim.keymap.set("v", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Explain" })

----- Harpoon -----
vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add File" })
vim.keymap.set("n", "<C-l>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "List" })
vim.keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<C-t>", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n", "<C-w>", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n", "<C-f>", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")
vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "File 1" })
vim.keymap.set("n", "<leader>ht", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "File 2" })
vim.keymap.set("n", "<leader>hw", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "File 3" })
vim.keymap.set("n", "<leader>hf", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "File 4" })

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft) -- Navigate to the left pane
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown) -- Navigate to the bottom pane
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp) -- Navigate to the top pane
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight) -- Navigate to the right pane

----- Copilot -----
vim.keymap.set("i", "<C-s>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
