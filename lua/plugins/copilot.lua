-- return {
--   -- Plugin: copilot.vim
--   "https://github.com/github/copilot.vim",
-- }
return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,
      },
    })
  end,
}
