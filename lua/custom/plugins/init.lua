-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    { 'Civitasv/cmake-tools.nvim', opts = {} },
    {
      'akinsho/toggleterm.nvim',
      version = '*',
      opts = {
        hide_numbers = true,
        auto_scroll = true,
        direction = 'float',
      },
    },
    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },

      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        keymap = { preset = 'enter' },

        appearance = {
          nerd_font_variant = 'mono',
        },

        completion = { documentation = { auto_show = false } },

        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        fuzzy = { implementation = 'prefer_rust_with_warning' },
      },
      opts_extend = { 'sources.default' },
    },
    {
      'akinsho/bufferline.nvim',
      version = '*',
      dependencies = 'nvim-tree/nvim-web-devicons',
      keys = {
        { '<leader><Tab>p', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
        { '<leader><Tab>n', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
        { '<leader><Tab>l', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
        { '<leader><Tab>h', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
        { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
        { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
        { '<M-1>', '<cmd>BufferLineGoToBuffer 1<cr>', desc = 'Go to Buffer #1' },
        { '<M-2>', '<cmd>BufferLineGoToBuffer 2<cr>', desc = 'Go to Buffer #2' },
        { '<M-3>', '<cmd>BufferLineGoToBuffer 3<cr>', desc = 'Go to Buffer #3' },
        { '<M-4>', '<cmd>BufferLineGoToBuffer 4<cr>', desc = 'Go to Buffer #4' },
        { '<M-5>', '<cmd>BufferLineGoToBuffer 5<cr>', desc = 'Go to Buffer #5' },
        { '<M-6>', '<cmd>BufferLineGoToBuffer 6<cr>', desc = 'Go to Buffer #6' },
        { '<M-7>', '<cmd>BufferLineGoToBuffer 7<cr>', desc = 'Go to Buffer #7' },
        { '<M-8>', '<cmd>BufferLineGoToBuffer 8<cr>', desc = 'Go to Buffer #8' },
        { '<M-9>', '<cmd>BufferLineGoToBuffer 9<cr>', desc = 'Go to Buffer #9' },
        { '<M-0>', '<cmd>BufferLineGoToBuffer 0<cr>', desc = 'Go to Buffer #0' },
      },
      opts = {
        options = {
          mode = 'buffers',
          numbers = 'ordinal',
        },
      },
    },
  },
}
