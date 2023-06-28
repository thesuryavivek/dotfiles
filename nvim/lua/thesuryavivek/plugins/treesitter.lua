local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"javascript",
		"typescript",
		"tsx",
		"json",
		"html",
		"css",
		"markdown",
		"gitignore",
		"dockerfile",
		"lua",
		"bash",
		"graphql",
		"svelte",
		"yaml",
	},
	auto_install = true,
})
