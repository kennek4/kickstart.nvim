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
          name = 'toggleterm',
          toggleterm = {
            direction = 'float',
            auto_scroll = true,
            close_on_exit = false,
            singleton = true,
          },
        },
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
}
