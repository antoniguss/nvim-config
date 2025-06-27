return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      -- Rustlings shortcuts
      vim.keymap.set({ 'n' }, '<leader>r', function()
        vim.cmd [[%s/\n\n\/\/ I AM NOT DONE//]]
        vim.cmd.w()
      end, { desc = 'Remove I AM NOT DONE comment and save' })

      vim.keymap.set({ 'n' }, '<leader>n', function()
        local cur = vim.fn.expand '%'
        local num = cur:sub(-4, -4)
        local next = cur:sub(1, -5) .. (num + 1) .. '.rs'
        if vim.fn.filereadable(next) == 1 then
          vim.cmd 'bd'
          vim.cmd('edit ' .. next)
        else
          print 'All problems solved for this topic.'
        end
      end, { desc = 'Go to next problem' })

      -- Disable LSP for Rust files using :LspStop, with a debug print
      -- vim.api.nvim_create_autocmd('FileType', {
      --   pattern = 'rust',
      --   callback = function()
      --     print '🔧 Rust FileType detected – stopping rust_analyzer LSP'
      --     vim.cmd 'LspStop'
      --   end,
      -- })
    end,
  },
}
