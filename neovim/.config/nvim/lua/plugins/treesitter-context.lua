-- Lightweight alternative to context.vim implemented with nvim-treesitter.
-- https://github.com/nvim-treesitter/nvim-treesitter-context
return {
	"nvim-treesitter/nvim-treesitter-context",
	lazy = true,
	event = "VeryLazy",
	config = true,
	dependencies = "nvim-treesitter/nvim-treesitter",
}
