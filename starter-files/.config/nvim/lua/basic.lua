colorscheme = "slate"
vim.cmd('colorscheme ' .. colorscheme) -- Set colorscheme

-- Set leader key
vim.g.mapleader = " "            -- Space as leader key

-- Basic options
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Relative line numbers
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.shiftwidth = 2           -- Number of spaces for each indent
vim.opt.tabstop = 2              -- Number of spaces in a tab
vim.opt.smartindent = true       -- Smart indentation
vim.opt.wrap = false             -- Disable line wrapping
vim.opt.scrolloff = 8            -- Lines of context to show above and below cursor
vim.opt.sidescrolloff = 8        -- Lines of context to show left and right of cursor
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Search settings
vim.opt.ignorecase = true        -- Ignore case when searching
vim.opt.smartcase = true         -- Override ignorecase if search contains uppercase

-- Basic key mappings
local map = vim.api.nvim_set_keymap
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = true }) -- Save
map('n', '<leader>q', ':q<CR>', { noremap = true, silent = true }) -- Quit
map('n', '<leader>h', ':split<CR>', { noremap = true, silent = true }) -- Split window horizontally
map('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true }) -- Split window vertically


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Disable swap file
vim.opt.swapfile = false          -- Disable swap file
