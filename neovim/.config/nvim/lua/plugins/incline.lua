-- Floating statuslines for Neovim
-- https://github.com/b0o/incline.nvim
local M = {
  "b0o/incline.nvim",
  lazy = true,
  event = "VeryLazy",
}

function M.config()
  local ok, incline = pcall(require, "incline")

  if not ok then
    return
  end

  incline.setup()
end

return M
