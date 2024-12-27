return {
  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' },
    },
    lazy = false,
    priority = 1000,
    opts = {
      preset = 'slate',
    },
    {
      'AlexvZyl/nordic.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        require('nordic').setup {
          telescope = { style = 'classic' },
          bright_border = true,
          transparent = { bg = true, float = true },
        }
        require('nordic').load()
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
