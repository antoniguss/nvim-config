-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
-- Oil
vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>de', '<cmd>lua vim.diagnostic.enable()<cr>')
vim.keymap.set('n', '<leader>dd', '<cmd>lua vim.diagnostic.disable()<cr>')
vim.keymap.set('n', '<leader>dt', function()
  if vim.diagnostic.is_enabled() then
    vim.diagnostic.enable(false)
  else
    vim.diagnostic.enable()
  end
end)

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Telescope keymaps
vim.keymap.set('n', '<leader><space>', function()
  require('telescope.builtin').find_files()
end, { desc = 'Find files' })
vim.keymap.set('n', '<leader>,', function()
  require('telescope.builtin').buffers()
end, { desc = 'Switch buffer' })
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').live_grep()
end, { desc = 'Live Grep' })

-- Terminal toggle
vim.keymap.set('n', '<leader>t', '<cmd>toggleterm<CR>', { desc = 'Toggle Terminal' })

-- Refactoring keymaps (commented out)
-- vim.keymap.set('x', '<leader>re', function()
--   require('refactoring').refactor 'Extract Function'
-- end)
-- vim.keymap.set('x', '<leader>rf', function()
--   require('refactoring').refactor 'Extract Function To File'
-- end)
-- Extract function supports only visual mode
-- vim.keymap.set('x', '<leader>rv', function()
--   require('refactoring').refactor 'Extract Variable'
-- end)
-- Extract variable supports only visual mode
-- vim.keymap.set('n', '<leader>rI', function()
--   require('refactoring').refactor 'Inline Function'
-- end)
-- Inline func supports only normal
-- vim.keymap.set({ 'n', 'x' }, '<leader>ri', function()
--   require('refactoring').refactor 'Inline Variable'
-- end)
-- Inline var supports both normal and visual mode

-- vim.keymap.set('n', '<leader>rb', function()
--   require('refactoring').refactor 'Extract Block'
-- end)
-- vim.keymap.set('n', '<leader>rbf', function()
--   require('refactoring').refactor 'Extract Block To File'
-- end)
-- Extract block supports only normal mode

-- vim: ts=2 sts=2 sw=2 et
