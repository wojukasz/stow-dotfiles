-- everforest is a green based color scheme;
-- https://github.com/sainnhe/everforest
local M = {
  "sainnhe/everforest",
  lazy = false,
}

function M.config()
  vim.g.everforest_background = "soft"
  vim.g.everforest_better_performance = true
  vim.g.everforest_diagnostic_text_highlight = true
  vim.g.everforest_transparent_background = true
end

vim.cmd([[colorscheme everforest]])

return M
