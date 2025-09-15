
-- show the lines number setting
vim.cmd("set nu!")

-- nvim colors 24bits modification
vim.cmd("set termguicolors")

-- tab spaces modification
vim.opt.tabstop = 4      -- Número de espaços que um Tab representa
vim.opt.shiftwidth = 4   -- Número de espaços usados para indentação automática
vim.opt.softtabstop = 1  -- Número de espaços ao pressionar Tab em modo de inserção
vim.opt.expandtab = true -- Converte Tab em espaços

-- notification messages and notify configuration
local notify = require("notify")
vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#70F3FF" })  -- blue border for info notify
vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = "#70F3FF" })
notify("Welcome abord captain", 'info')
notify("All sistems On-line")

