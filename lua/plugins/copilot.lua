-- return {
--   -- Plugin: copilot.vim
--   "https://github.com/github/copilot.vim",
-- }
return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true,
    },
    filetypes = {
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
    },
  },
}
