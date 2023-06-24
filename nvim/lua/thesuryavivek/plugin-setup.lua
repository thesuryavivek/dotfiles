local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "christoomey/vim-tmux-navigator" },
	{ "nvim-tree/nvim-tree.lua", version = "*", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.1", dependencies = { "nvim-lua/plenary.nvim" } },

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- auto closing brackets
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },

	-- autocompletions
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },

	-- snippets
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },

	-- LSP
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},

	-- lsp ui
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "onsails/lspkind.nvim" },

	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "jayp0521/mason-null-ls.nvim" },

	-- git signs for lines
	{ "lewis6991/gitsigns.nvim" },

	-- commenting
	{ "numToStr/Comment.nvim" },

	-- surround
	{ "tpope/vim-surround" },

	-- notifications
	{ "rcarriga/nvim-notify" },

	-- show buffers as tabs
	{ "romgrk/barbar.nvim" },

	{ "ggandor/leap.nvim", dependencies = { "tpope/vim-repeat" } },
})
