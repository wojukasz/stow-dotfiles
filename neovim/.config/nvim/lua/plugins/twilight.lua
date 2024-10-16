-- Twilight is a Lua plugin for Neovim 0.5 that dims inactive portions of the code you're editing.
-- https://github.com/folke/twilight.nvim
local M = {
  "folke/twilight.nvim",
  lazy = true,
  cmd = {
    "Twilight",
    "TwilightEnable",
    "TwilightDisable",
  },
}

function M.config()
  local ok, twilight = pcall(require, "twilight")

  if not ok then
    return
  end

  twilight.setup({
    dimming = {
      alpha = 0.25, -- amount of dimming
      -- we try to get the foreground from the highlight groups or fallback color
      color = { "Normal", "#ffffff" },
      inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
    },
    context = 10,       -- amount of lines we will try to show around the current line
    treesitter = true,  -- use treesitter when available for the filetype
    -- treesitter is used to automatically expand the visible text,
    -- but you can further control the types of nodes that should always be fully expanded
    expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
      "function",
      "method",
      "table",
      "if_statement",
    },
    exclude = {}, -- exclude these filetypes
  })
end

return M
