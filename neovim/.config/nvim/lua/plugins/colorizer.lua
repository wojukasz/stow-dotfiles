-- A high-performance color highlighter for Neovim which has no external dependencies!
-- https://github.com/norcalli/nvim-colorizer.lua
local M = {
  "norcalli/nvim-colorizer.lua",
  event = "BufReadPre",
}

function M.config()
  local ok, colorizer = pcall(require, "colorizer")
  if not ok then
    return
  end

  colorizer.setup({ "*" }, {
    RGB = true,      -- #RGB hex codes
    RRGGBB = true,   -- #RRGGBB hex codes
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    rgb_fn = true,   -- CSS rgb() and rgba() functions
    hsl_fn = true,   -- CSS hsl() and hsla() functions
    css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
    namess = true,   -- "Name" codes like Blue
  })
end

return M
