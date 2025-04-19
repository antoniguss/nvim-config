-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- Core functionality
  require 'kickstart.plugins.which-key',
  require 'kickstart.plugins.colorscheme',
  require 'kickstart.plugins.mini',

  -- File management
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.oil',
  require 'kickstart.plugins.telescope',

  -- Git integration
  require 'kickstart.plugins.git',

  -- Language support
  require 'kickstart.plugins.lspconfig',
  require 'kickstart.plugins.treesitter',
  require 'kickstart.plugins.cmp',
  require 'kickstart.plugins.conform',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.rust',
  require 'kickstart.plugins.golang',

  -- UI enhancements
  require 'kickstart.plugins.barbecue',
  require 'kickstart.plugins.todo-comments',
  require 'kickstart.plugins.trouble',

  -- Development tools
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.refactor',
  require 'kickstart.plugins.leetcode',

  -- Integration
  require 'kickstart.plugins.tmux',
  require 'kickstart.plugins.wakatime',
  require 'kickstart.plugins.typr',
  require 'kickstart.plugins.persistance',
  require 'kickstart.plugins.snacks',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
