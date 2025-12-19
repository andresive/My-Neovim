-- arquivo onde são adcionados os plugins
require('plugins')

-- aarquivo de configurações padrão do nvim 
require('config')

-- arquivo onde tem configuração de plugins
require('utils')

-- arquivo de mapeamento de teclas
require('mappings')

-- file for custom commands
require('commands')

-- show errors in .cs files on save file
--    vim.api.nvim_create_autocmd("BufWritePost", {
--    pattern = "*.cs",
--    callback = function()
--      vim.diagnostic.setloclist()
--    end,
--    })

-- saves the file to alter file on buffer
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  callback = function()
    -- salva o buffer atual silenciosamente ao sair dele
    vim.cmd("silent! write")
  end,
})

-- white spaces show caracters config
vim.opt.list = true
vim.opt.listchars = {
    space = '·',   -- mostra espaços no meio
    tab = '→ ',    -- mostra tab
    trail = '•',
}

--format csharp file on save 
--vim.api.nvim_create_autocmd("BufWritePre", {
--    pattern = "*.cs", -- set on .cs file 
--    callback = function()
--        vim.lsp.buf.format({ async = false })
--    end,
--})

-- this code is optional if you not use csharp or no use csharpier for format your
-- code delete code below 
-- format on csharpier on save file
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.cs", -- only .cs files 
    callback = function()
        require("conform").format()
    end,
})
