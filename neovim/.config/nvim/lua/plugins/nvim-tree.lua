-- A file explorer tree for neovim written in lua
-- https://github.com/nvim-tree/nvim-tree.lua
-- Open the tree: :NvimTreeOpen
-- Show the mappings: g?
local M = {
	"nvim-tree/nvim-tree.lua",
}

function M.config()
	require("nvim-tree").setup({
		sort_by = "case_sensitive",
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = false, -- show dotfiles
		},
	})
end

return M
