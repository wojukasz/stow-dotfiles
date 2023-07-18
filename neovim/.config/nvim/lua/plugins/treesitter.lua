-- The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it
-- https://github.com/nvim-treesitter/nvim-treesitter
-- Check :h nvim-treesitter-utils for more information.
return {
	"nvim-treesitter/nvim-treesitter",
	config = true,
	build = ":TSUpdate",
	lazy = true,
	event = "VeryLazy",
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter-textobjects" },
		{
			"m-demare/hlargs.nvim",
			config = true,
			dependencies = { "nvim-treesitter/nvim-treesitter" },
		},
		{ "p00f/nvim-ts-rainbow" },
	},
}
