--  Smoothly navigate between neovim and terminal multiplexer(s)
--  https://github.com/numToStr/Navigator.nvim
local M = {
	"numToStr/Navigator.nvim",
}

function M.config()
	require("Navigator").setup()
end

return M
