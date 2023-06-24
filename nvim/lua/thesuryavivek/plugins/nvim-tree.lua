  local status, nvimTree = pcall(require, "nvim-tree")

  if not status then
    return
  end

  -- recommended settings from docs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

nvimTree.setup()
