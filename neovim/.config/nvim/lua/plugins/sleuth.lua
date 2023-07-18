-- This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
-- https://github.com/tpope/vim-sleuth
local M = {
  "tpope/vim-sleuth",
  lazy = true,
  event = "BufRead",
}

return M
