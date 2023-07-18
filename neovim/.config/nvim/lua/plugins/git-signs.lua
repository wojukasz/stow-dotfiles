-- Super fast git decorations implemented purely in Lua.
-- https://github.com/lewis6991/gitsigns.nvim
local M = {
  "lewis6991/gitsigns.nvim",
  lazy = true,
  event = "BufRead",
}

function M.config()
  require("gitsigns").setup({
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",
      delay = 300,
    }
  })
end

return M
