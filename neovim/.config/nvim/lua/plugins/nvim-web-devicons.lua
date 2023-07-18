-- A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
--
local M = {
  "kyazdani42/nvim-web-devicons",
}

function M.config()
  local ok, devicons = pcall(require, "nvim-web-devicons")

  if not ok then
    return
  end

  devicons.setup({
    -- globally enable default icons (default to false)
    -- will get overriden by `get_icons` option
    default = true,
  })
end

return M
