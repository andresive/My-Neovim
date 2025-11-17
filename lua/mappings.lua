
-- comum shortcuts of nvim 

-- shortcuts for save files
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true})
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true})


-- function verify if telescope is open and return true or false
local function telescopeOpen()
    -- return if telescope is open
    return vim.bo.filetype == "TelescopePrompt"
end 

-- function for quit nvim even with nvim tree is open
local function closeTree() 
    local tree = require("nvim-tree.view")

    -- verify if nvim tree is open 
    if(tree.is_visible()) then
        vim.cmd("NvimTreeClose | q")
    else
        vim.cmd("q")
    end
end

-- quit shortcut
vim.keymap.set('n', '<C-x>', closeTree, {noremap = true})
vim.keymap.set('i', '<C-x>', closeTree, {noremap = true})
vim.keymap.set('v', '<C-x>', closeTree, {noremap = true})

-- shortcut for copy
vim.keymap.set('v', '<C-c>', '"+y', {noremap = true})

-- shortcuts for paste
vim.keymap.set('n', '<C-v>', '"+p', {noremap = true})
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', {noremap = true})

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
vim.keymap.set('t', '<C-t>', 'exit<CR>', {noremap = true, silent = true})

-- telescope file browser shortcuts

local function closeTelescope() 
    local verify = telescopeOpen();
    
    if(verify) then
        vim.cmd("stopinsert | q!") -- comand for close telescope prompt
    else
        vim.cmd("Telescope file_browser") -- comand for open telescope prompt
    end 
end

vim.keymap.set('n', '<A-f>', closeTelescope, {noremap = true})
vim.keymap.set('i', '<A-f>', closeTelescope, {noremap = true})
vim.keymap.set('v', '<A-f>', closeTelescope, {noremap = true})

-- function for toggle local list of errors

local function LocalListVerify()
    local localOpen = vim.fn.getloclist(0)
    return #localOpen > 0
end

local function LocalListToggle() 
    local locOpen = LocalListVerify()

    if(locOpen) then
        vim.cmd("lclose")
    else 
        vim.cmd("lopen")
    end
end

-- local list toggle shortcut
vim.keymap.set('n', '<A-s>', LocalListToggle, {noremap = true})
vim.keymap.set('i', '<A-s>', LocalListToggle, {noremap = true})
vim.keymap.set('v', '<A-s>', LocalListToggle, {noremap = true})

-- mark down render shortcut
vim.keymap.set('n', '<C-m>', ':RenderMarkdown toggle<CR>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-m>', ':RenderMarkdown toggle<CR> | +i', {noremap = true, silent = true})
vim.keymap.set('v', '<C-m>', ':RenderMarkdown toggle<CR>', {noremap = true, silent = true})

-- trouble plugin shortcuts
-- diagnostics
vim.keymap.set('n', '<C-e>', ':Trouble diagnostics toggle<CR>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-e>', '<Esc>:Trouble diagnostics toggle<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-e>', ':Trouble diagnostics toggle<CR>', {noremap = true, silent = true})
-- symbols / structure of file 
vim.keymap.set('n', '<C-h>', ':Trouble symbols toggle<CR>', {noremap = true, silent =true})
vim.keymap.set('i', '<C-h>', ':Trouble symbols toggle<CR>', {noremap = true, silent =true})
vim.keymap.set('v', '<C-h>', ':Trouble symbols toggle<CR>', {noremap = true, silent =true})

-- visual to insert mode shortcut 
vim.keymap.set("v", '<S-i>', '<Esc>i', {noremap = true})

-- insertmode to visual mode shortcut 
vim.keymap.set('i', '<S-v>', '<Esc>v', {noremap = true})
