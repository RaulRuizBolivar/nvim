-- return {
--   -- Plugin: copilot.vim
--   "https://github.com/github/copilot.vim",
-- }
return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
      },
    })
  end,
}
