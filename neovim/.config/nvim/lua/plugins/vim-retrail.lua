-- Whitespace management for Neovim
-- https://github.com/kaplanz/nvim-retrail
local M = {
  "kaplanz/nvim-retrail",
}

function M.config()
  require("retrail").setup({
    filetype = {
      exclude = {
        "alpha",
        "diff",
        "dirvish",
        "help",
      },
    },
  })
end

return M
