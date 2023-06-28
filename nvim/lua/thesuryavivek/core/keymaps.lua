vim.keymap.set("i", "jk", "<ESC>")

-- half page scroll and center it
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "x", '"_x')

-- inc / dec
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")
-- nvim tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

-- barbar tabs
vim.keymap.set("n", "<A-h>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<A-l>", ":BufferNext<CR>")
vim.keymap.set("n", "<leader>db", ":BufferClose<CR>")
