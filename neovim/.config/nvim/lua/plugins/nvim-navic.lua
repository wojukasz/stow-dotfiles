-- Simple winbar/statusline plugin that shows your current code context
-- https://github.com/SmiteshP/nvim-navic
return {
  "SmiteshP/nvim-navic",
  config = function()
    vim.g.navic_silence = true
    require("nvim-navic").setup({ separator = " ", highlight = true, depth_limit = 5 })
  end,
}
