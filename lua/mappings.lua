
-- comum shortcuts of nvim 
-- shortcuts for save files
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR> | "+i', { noremap = true, silent = true})
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>', { noremap = true })
-- quit shortcut
vim.keymap.set('n', '<C-x>', ':q<CR>', {noremap = true})
vim.keymap.set('i', '<C-x>', '<Esc>:q<CR>', {noremap = true})
vim.keymap.set('v', '<C-x>', '<Esc>:q<CR>', {noremap = true})
-- shortcut for copy
vim.keymap.set('v', '<C-c>', '"+y', {noremap = true})
-- shortcuts for paste
vim.keymap.set('n', '<C-v>', '"+p', {noremap = true})
vim.keymap.set('i', '<C-v>', '<Esc>"+p', {noremap = true})
-- shortcuts for select all in file
vim.keymap.set('n', '<C-a>', '"+ggVG', {noremap = true})
vim.keymap.set('v', '<C-a>', '<Esc>"+ggVG', {noremap = true})
vim.keymap.set('i', '<C-a>', '<Esc>"+ggVG', {noremap = true})
-- shortcuts for revert modifications in file
vim.keymap.set('i', '<C-z>', '<Esc>"+u | "+i', {noremap = true, silent = true})
vim.keymap.set('n', '<C-z>', '"+u', {noremap = true})
vim.keymap.set('v', '<C-z>', '<Esc>"+u | "+i', {noremap = true, silent = true})

-- Telescope shortcuts
vim.keymap.set('n', '<C-q>', ':Telescope find_files<CR>', {noremap = true})
vim.keymap.set('v', '<C-q>', '<Esc>:Telescope find_files<CR>', {noremap = true})
vim.keymap.set('i', '<C-q>', '<Esc>:Telescope find_files<CR>', {noremap = true})

-- nvim Tree shortcuts
vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>', {noremap = true})
vim.keymap.set('i', '<C-f>', '<Esc>:NvimTreeToggle<CR>', {noremap = true})
vim.keymap.set('v', '<C-f>', '<Esc>:NvimTreeToggle<CR>',  {noremap = true})

-- Float term shortcuts
vim.keymap.set('n', '<C-t>', ':FloatermToggle<CR>', {noremap = true})
vim.keymap.set('i', '<C-t>', '<Esc>:FloatermToggle<CR>', {noremap = true})
vim.keymap.set('v', '<C-t>', '<Esc>:FloatermToggle<CR>', {noremap = true})
vim.keymap.set('t', '<C-t>', 'exit<CR>', {noremap = true})


