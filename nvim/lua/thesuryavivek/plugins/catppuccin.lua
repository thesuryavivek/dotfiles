local status, catppuccin = pcall(require, "catppuccin")
if not status then
  return
end

catppuccin.setup({
  integrations = {
    nvimtree = true,
  },
  highlight_overrides = {
    mocha = function(mocha)
      return {
        LineNr = { fg = '#ffffff' },
        NvimTreeNormal = { bg = mocha.none },
        CursorLine = { bg = mocha.mantle}
      }
    end,
  }
})

vim.cmd.colorscheme "catppuccin"
