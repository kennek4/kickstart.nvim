-- QoL
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit Insert Mode' })
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit Insert Mode' })
vim.keymap.set('n', '<S-j>', '<Esc>o<Esc>', { desc = 'Insert new line below cursor' })
vim.keymap.set('n', '<S-k>', '<Esc>O<Esc>', { desc = 'Insert new line above cursor' })
vim.keymap.set('n', '<C-s>', '<cmd>:w!<CR>', { desc = '[S]ave current buffer' })
vim.keymap.set('n', '<C-S-s>', '<cmd>:wq!<CR>', { desc = '[S]ave current buffer and [Q]uit' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- WINDOW
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Quit Current Window' })

-- TERMINAL
vim.keymap.set('n', '<leader>t', '<cmd>:ToggleTerm<CR>', { desc = '[T]oggle Terminal' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n><cmd>:q!<CR>', { desc = 'Exit terminal mode' })
