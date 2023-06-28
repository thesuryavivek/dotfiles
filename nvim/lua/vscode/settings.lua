vim.g.mapleader = " "

local map = vim.keymap.set

-- vscode commands
map("n", "<leader>e", ":call VSCodeNotify('workbench.view.explorer')<CR>")
map("n", "<leader>db", ":call VSCodeNotify('workbench.action.closeActiveEditor')<CR>")
map("n", "<leader>f", ":call VSCodeNotify('workbench.action.quickOpen')<CR>")

map("n", "<C-h>", ":call VSCodeNotify('workbench.action.navigateLeft')<CR>")
map("n", "<C-l>", ":call VSCodeNotify('workbench.action.navigateRight')<CR>")
map("n", "<C-k>", ":call VSCodeNotify('workbench.action.navigateUp')<CR>")
map("n", "<C-j>", ":call VSCodeNotify('workbench.action.navigateDown')<CR>")

map("n", "<leader>c", ":call VSCodeNotify('editor.action.commentLine')<CR>")
map("n", "<leader>t", ":call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>")
map("n", "<leader>nt", ":call VSCodeNotify('workbench.action.terminal.new')<CR>")
map("n", "<leader>ne", ":call VSCodeNotify('editor.action.marker.next')<CR>")
map("n", "<leader>pe", ":call VSCodeNotify('editor.action.marker.prev')<CR>")

-- normal keymaps
map("n", "<C-u>zz", "<C-u>zz")
map("n", "<C-d>zz", "<C-d>zz")
map("n", "x", '"_x')
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")
map("n", "<leader>ch", ":nohlsearch<CR>")

-- Options
local o = vim.opt
o.clipboard:append("unnamedplus")
