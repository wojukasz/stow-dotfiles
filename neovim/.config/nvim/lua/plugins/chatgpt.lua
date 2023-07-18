-- allows you to effortlessly utilize the OpenAI ChatGPT AP
-- https://github.com/jackMort/ChatGPT.nvim
return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	cmd = { "ChatGPT", "ChatGPTRun", "ChatGPTActAs", "ChatGPTCompleteCode", "ChatGPTEditWithInstructions" },
	config = function()
		require("chatgpt").setup()
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
