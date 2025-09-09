-- ~/.config/nvim/lua/custom/plugins/compiler.lua
return {
  {
    'Zeioth/compiler.nvim',
    cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
    dependencies = { 'stevearc/overseer.nvim', 'nvim-telescope/telescope.nvim' },
    opts = {},
    keys = {
      { '<F6>', '<cmd>CompilerOpen<cr>', desc = 'Open Compiler' },
      { '<S-F6>', '<cmd>CompilerStop<cr><cmd>CompilerRedo<cr>', desc = 'Redo last task' },
      { '<S-F7>', '<cmd>CompilerToggleResults<cr>', desc = 'Toggle Compiler Results' },
    },
  },
  {
    'stevearc/overseer.nvim',
    commit = '6271cab7ccc4ca840faa93f54440ffae3a3918bd',
    cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
    opts = {
      task_list = {
        direction = 'bottom',
        min_height = 15,
        max_height = 15,
        default_detail = 1,
      },
    },
  },
}
