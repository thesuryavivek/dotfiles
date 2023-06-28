if vim.g.vscode then
	require("vscode.settings")
else
	require("thesuryavivek.plugin-setup")
	require("thesuryavivek.plugins")
	require("thesuryavivek.core")
end
