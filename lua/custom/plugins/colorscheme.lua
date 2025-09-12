return {
  {
    'craftzdog/solarized-osaka.nvim',
    priority = 1000, -- load before other plugins
    lazy = false, -- load immediately
    opts = function()
      return {
        transparent = false,
      }
    end,
    config = function(_, opts)
      require('solarized-osaka').setup(opts)
      vim.cmd.colorscheme 'solarized-osaka' -- apply globally
    end,
  },
}
