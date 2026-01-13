-- QoL
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit Insert Mode' })
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit Insert Mode' })
vim.keymap.set('n', '<S-j>', '<Esc>o<Esc>', { desc = 'Insert new line below cursor' })
vim.keymap.set('n', '<S-k>', '<Esc>O<Esc>', { desc = 'Insert new line above cursor' })
vim.keymap.set('n', '<C-s>', '<cmd>:w!<CR>', { desc = '[S]ave current buffer' })
vim.keymap.set('n', '<C-S-s>', '<cmd>:wq!<CR>', { desc = '[S]ave current buffer and [Q]uit' })

local id = vim.api.nvim_create_augroup('startup', {
  clear = false,
})

local persistbuffer = function(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  vim.fn.setbufvar(bufnr, 'bufpersist', 1)
end

vim.api.nvim_create_autocmd({ 'BufRead' }, {
  group = id,
  pattern = { '*' },
  callback = function()
    vim.api.nvim_create_autocmd({ 'InsertEnter', 'BufModifiedSet' }, {
      buffer = 0,
      once = true,
      callback = function()
        persistbuffer()
      end,
    })
  end,
})

vim.keymap.set('n', '<Leader>d', function()
  local curbufnr = vim.api.nvim_get_current_buf()
  local buflist = vim.api.nvim_list_bufs()
  for _, bufnr in ipairs(buflist) do
    if vim.bo[bufnr].buflisted and bufnr ~= curbufnr and (vim.fn.getbufvar(bufnr, 'bufpersist') ~= 1) then
      vim.cmd('bd ' .. tostring(bufnr))
    end
  end
end, { silent = true, desc = 'Close unused buffers' })

-- LSP
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = 'LSP: [R]ename variable' })
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'LSP: Cursor [H]over' })
vim.keymap.set('n', '<leader>ls', vim.lsp.buf.code_action, { desc = 'LSP: Look at [S]uggestions' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.references, { desc = 'LSP: [F]ind References' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'LSP: Find Definition' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Window
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Quit Current Window' })

-- Terminal
vim.keymap.set('n', '<leader>t', '<cmd>:ToggleTerm<CR>', { desc = '[T]oggle Terminal' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n><cmd>:q!<CR>', { desc = 'Exit terminal mode' })

-- CMake
vim.keymap.set('n', '<leader>cmb', '<cmd>:CMakeBuild <CR>', { desc = '[C][M]ake[B]uild' })
vim.keymap.set('n', '<leader>cmc', '<cmd>:CMakeClean <CR>', { desc = '[C][M]ake[C]lean' })
vim.keymap.set('n', '<leader>cmg', '<cmd>:CMakeGenerate <CR>', { desc = '[C][M]ake[G]enerate' })
vim.keymap.set('n', '<leader>cmr', '<cmd>:CMakeRun <CR>', { desc = '[C][M]ake[R]un' })
vim.keymap.set('n', '<leader>cmt', '<cmd>:CMakeSelectBuildTarget <CR>', { desc = '[C][M]akeSelectBuild[T]arget' })
vim.keymap.set('n', '<leader>cms', '<cmd>:CMakeSettings <CR>', { desc = '[C][M]ake[S]ettings' })
