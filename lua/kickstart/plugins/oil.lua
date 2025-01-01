return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- Configure options here
      popup_border_style = 'rounded', -- You can customize this further if needed
      -- You can add more options specific to oil.nvim here
    },
    dependencies = {
      'echasnovski/mini.icons', -- Optional dependency for icons
      -- Uncomment the following line if you want to use nvim-web-devicons
      -- { 'nvim-tree/nvim-web-devicons' },
    },
    cmd = 'Oil', -- Command to open oil.nvim
  },
}
