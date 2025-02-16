return {
  "catppuccin/nvim",
  name = 'catppuccin',
  config = function() vim.cmd.colorscheme('catppuccin-mocha') end,
  lazy = false,
  priority = 1000,
  opts = {},
}
