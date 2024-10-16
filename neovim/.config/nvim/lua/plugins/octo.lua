-- Edit and review GitHub issues and pull requests from the comfort of your favorite editor
-- https://github.com/pwntester/octo.nvim
local M = {
  "pwntester/octo.nvim",
  lazy = true,
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "kyazdani42/nvim-web-devicons",
  },
}

function M.config()
  local ok, octo = pcall(require, "octo")
  if not ok then
    return
  end
  octo.setup()
end

return M
