-- Basic editor settings
vim.g.mapleader = " "  -- Set leader key to space

-- Indentation settings
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.tabstop = 2         -- Display tab characters as 2 spaces
vim.opt.softtabstop = 2     -- Tab/backspace count as 2 spaces
vim.opt.shiftwidth = 2      -- Indentation uses 2 spaces
vim.opt.autoindent = true   -- Copy indent from current line when starting new line

-- UI settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true     -- Highlight current line
vim.opt.showmatch = true      -- Highlight matching brackets
vim.opt.termguicolors = true  -- Enable true color support

-- Terminal commands
vim.api.nvim_create_user_command("TermBelow", "split | wincmd j | terminal", {})
vim.api.nvim_create_user_command("TermResize", "resize -5", {})

-- Automatically enter insert mode in terminal
vim.cmd [[
  autocmd TermOpen * startinsert
]]

-- Keybindings
vim.keymap.set('n', '<leader>trb', ':TermBelow<CR>', { noremap = true, silent = true }) -- Open terminal
vim.keymap.set('n', '<leader>trs', ':TermResize<CR>', { noremap = true, silent = true }) -- Resize terminal
vim.keymap.set('n', '<leader>src', 'source $MYVIMRC<CR>', { noremap = true, silent = true }) -- Source config
