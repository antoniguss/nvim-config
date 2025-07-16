-- [[ Plugin Configuration ]]
--
-- This file manages all plugins using lazy.nvim
-- Plugins are organized by category and loaded from their respective folders
-- in lua/plugins/
--
-- Commands:
--   :Lazy     - View plugin status
--   :Lazy update - Update plugins
--   :Lazy sync   - Install missing plugins

require('lazy').setup({
  -- ===== Core Functionality =====
  -- Essential plugins that provide core features
  require 'plugins.ui.which-key', -- Key binding hints
  require 'plugins.ui.colorscheme', -- Theme
  require 'plugins.editor.mini', -- Collection of minimal plugins

  -- ===== File Management =====
  -- Tools for navigating and managing files
  require 'plugins.navigation.neo-tree', -- File explorer
  require 'plugins.editor.oil', -- File operations
  require 'plugins.navigation.telescope', -- Fuzzy finder

  -- ===== Git Integration =====
  -- Git-related functionality
  require 'plugins.git.git', -- Git commands and status

  -- ===== Language Support =====
  -- Language-specific features and LSP
  require 'plugins.lang.lspconfig', -- LSP configuration
  require 'plugins.lang.treesitter', -- Syntax highlighting
  require 'plugins.completion.cmp', -- Code completion
  require 'plugins.editor.conform', -- Code formatting
  require 'plugins.lang.lint', -- Linting
  require 'plugins.completion.autopairs', -- Auto-pairing
  require 'plugins.lang.rust', -- Rust support
  require 'plugins.lang.golang', -- Go support
  require 'plugins.lang.markdown', -- Markdown rendering
  require 'plugins.lang.typescript', -- Typescript support

  -- ===== UI Enhancements =====
  -- Visual improvements and UI elements
  require 'plugins.ui.barbecue', -- Breadcrumbs
  require 'plugins.ui.todo-comments', -- Todo highlights
  require 'plugins.ui.tmux',
  require 'plugins.ui.trouble', -- Diagnostics viewer

  -- ===== Development Tools =====
  -- Tools for development workflow
  require 'plugins.debug.debug', -- Debugging
  require 'plugins.editor.refactor', -- Code refactoring
  require 'plugins.lang.leetcode', -- Leetcode integration

  -- ===== Integration =====
  -- External tool integrations
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

