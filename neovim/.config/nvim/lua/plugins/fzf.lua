-- Things you can do with fzf and Vim.
-- https://github.com/junegunn/fzf
local M = {
  "junegunn/fzf",
  lazy = true,
  build = function()
    vim.fn["fzf#install"]()
  end,
}

return M
