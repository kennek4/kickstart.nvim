-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    {
      'Civitasv/cmake-tools.nvim',
      opts = {
        cmake_runner = {
          name = 'quickfix',
          opts = {
            quickfix = {
              auto_close_when_success = false,
            },
          },
        },
        cmake_executor = {
          name = 'quickfix',
          opts = {
            quickfix = {
              auto_close_when_success = false,
            },
          },
        },
      },
    },
    {
      'sphamba/smear-cursor.nvim',
      opts = {},
    },
    {
      'ggandor/lightspeed.nvim',
      dependencies = {
        'tpope/vim-repeat',
      },
    },
    {
      'y3owk1n/undo-glow.nvim',
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
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
  },
  {
    'mfussenegger/nvim-dap',
    event = 'VeryLazy',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      'jay-babu/mason-nvim-dap.nvim',
      'theHamsta/nvim-dap-virtual-text',
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
}
