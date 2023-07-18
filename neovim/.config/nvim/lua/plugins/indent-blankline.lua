-- This plugin adds indentation guides to all lines (including empty lines).
-- https://github.com/lukas-reineke/indent-blankline.nvim
local M = {
  "lukas-reineke/indent-blankline.nvim",
  lazy = true,
  event = "BufRead",
}

function M.config()
  local ok, indent = pcall(require, "indent_blankline")
  if not ok then
    return
  end

  indent.setup({
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,

    -- pretty colourlines
    -- https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list
    -- char_highlight_list = {
    --   "IndentBlanklineIndent1",
    --   "IndentBlanklineIndent2",
    --   "IndentBlanklineIndent3",
    --   "IndentBlanklineIndent4",
    --   "IndentBlanklineIndent5",
    --   "IndentBlanklineIndent6",
    -- },
  })
  vim.opt.list = true
  vim.opt.termguicolors = true
  -- vim.opt.listchars:append("eol:↴")

  -- https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list
  -- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
  -- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
  -- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
  -- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
  -- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
  -- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
end

return M
