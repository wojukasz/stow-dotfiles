-- A feature-rich Go development plugin, leveraging gopls, treesitter AST, Dap, and various Go tools to enhance the development experience.
-- https://github.com/ray-x/go.nvim
local M = {
	"ray-x/go.nvim",
	dependencies = { "ray-x/guihua.lua" },
	ft = "go",
	cmd = {
		"GoAddAllTest",
		"GoAddExpTest",
		"GoAddTag",
		"GoAddTest",
		"GoBreakToggle",
		"GoBuild",
		"GoCheat",
		"GoClearTag",
		"GoCmt",
		"GoCoverage",
		"GoDbgContinue",
		"GoDbgKeys",
		"GoDbgStop",
		"GoDebug",
		"GoDoc",
		"GoFillStruct",
		"GoFillSwitch",
		"GoFixPlurals",
		"GoFmt",
		"GoGenerate",
		"GoGet",
		"GoIfErr",
		"GoImpl",
		"GoImport",
		"GoInstallBinaries",
		"GoInstallBinary",
		"GoLint",
		"GoMake",
		"GoPkgOutline",
		"GoRename",
		"GoRmTag",
		"GoRun",
		"GoStop",
		"GoTermClose",
		"GoTest",
		"GoTest",
		"GoTest",
		"GoTestFile",
		"GoTestFunc",
		"GoTestPkg",
		"GoTestSum",
		"GoUpdateBinaries",
		"GoUpdateBinary",
		"GoVet",
	},
}

function M.config()
	local go = require("go")

	go.setup({
		lsp_inlay_hints = {
			enable = false
		}
	})

	local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*.go",
		callback = function()
			require("go.format").gofmt()
		end,
		group = format_sync_grp,
	})
end

return M
