return {
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html', -- if you have `nvim-treesitter` installed
    dependencies = {
      'nvim-telescope/telescope.nvim',
      -- "ibhagwan/fzf-lua",
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },

    opts = {
      ---@type lc.storage
      storage = {
        home = '~/go/src/github.com/antoniguss/leetcode/',
        -- cache = vim.fn.stdpath 'cache' .. '/leetcode',
      },
      lang = 'golang',
    },
  },
}
