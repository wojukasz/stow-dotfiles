-- basic vim/terraform integration
-- https://github.com/hashivim/vim-terraform
local M = {
  "hashivim/vim-terraform",
  lazy = true,
  ft = "terraform",
}

function M.config()
  vim.g.hcl_align = 1
  vim.g.terraform_align = 1
  vim.g.terraform_fmt_on_save = 1
end

return M
