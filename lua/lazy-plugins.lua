-- [[ Plugin Configuration ]]
--
-- This file manages all plugins using lazy.nvim
-- Plugins are organized by category and loaded from their respective files
-- in lua/kickstart/plugins/
--
-- Commands:
--   :Lazy     - View plugin status
--   :Lazy update - Update plugins
--   :Lazy sync   - Install missing plugins

require('lazy').setup({
  -- ===== Core Functionality =====
  -- Essential plugins that provide core features
  require 'kickstart.plugins.which-key', -- Key binding hints
  require 'kickstart.plugins.colorscheme', -- Theme
  require 'kickstart.plugins.mini', -- Collection of minimal plugins

  -- ===== File Management =====
  -- Tools for navigating and managing files
  require 'kickstart.plugins.neo-tree', -- File explorer
  require 'kickstart.plugins.oil', -- File operations
  require 'kickstart.plugins.telescope', -- Fuzzy finder

  -- ===== Git Integration =====
  -- Git-related functionality
  require 'kickstart.plugins.git', -- Git commands and status

  -- ===== Language Support =====
  -- Language-specific features and LSP
  require 'kickstart.plugins.lspconfig', -- LSP configuration
  require 'kickstart.plugins.treesitter', -- Syntax highlighting
  require 'kickstart.plugins.cmp', -- Code completion
  require 'kickstart.plugins.conform', -- Code formatting
  require 'kickstart.plugins.lint', -- Linting
  require 'kickstart.plugins.autopairs', -- Auto-pairing
  require 'kickstart.plugins.rust', -- Rust support
  require 'kickstart.plugins.golang', -- Go support

  -- ===== UI Enhancements =====
  -- Visual improvements and UI elements
  require 'kickstart.plugins.barbecue', -- Breadcrumbs
  require 'kickstart.plugins.todo-comments', -- Todo highlights
  require 'kickstart.plugins.trouble', -- Diagnostics viewer
  require 'kickstart.plugins.markdown', -- Markdown rendering

  -- ===== Development Tools =====
  -- Tools for development workflow
  require 'kickstart.plugins.debug', -- Debugging
  require 'kickstart.plugins.refactor', -- Code refactoring
  require 'kickstart.plugins.leetcode', -- Leetcode integration

  -- ===== Integration =====
  -- External tool integrations
  require 'kickstart.plugins.tmux', -- Tmux integration
  require 'kickstart.plugins.wakatime', -- Time tracking
  require 'kickstart.plugins.typr', -- Typing statistics
  require 'kickstart.plugins.persistance', -- Session management
  
}, {
  ui = {
    -- Icons for the lazy.nvim UI
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
