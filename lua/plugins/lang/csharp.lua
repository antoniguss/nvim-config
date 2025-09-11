return {
  {
    'jmederos/roslyn.nvim',
    config = function()
      require('roslyn').setup {
        dotnet_cmd = 'dotnet', -- Or 'mono'
      }
    end,
  },
}