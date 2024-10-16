-- NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.
-- https://github.com/rebelot/kanagawa.nvim
local M = {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  local ok, kanagawa = pcall(require, "kanagawa")
  if not ok then
    return
  end

  kanagawa.setup({
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    variablebuiltinStyle = { italic = true },
    specialReturn = true,    -- special highlight for the return keyword
    specialException = true, -- special highlight for exception handling keywords
    transparent = false,     -- do not set background color
    dimInactive = false,     -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,    -- adjust window separators highlight for laststatus=3
  })

  -- vim.cmd([[colorscheme kanagawa]])
end

return M
