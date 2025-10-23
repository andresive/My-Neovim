-- arquivo onde são adcionados os plugins
require('plugins')

-- aarquivo de configurações padrão do nvim 
require('config')

-- arquivo onde tem configuração de plugins
require('utils')

-- arquivo de mapeamento de teclas
require('mappings')

-- show errors in .cs files on save file
    vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.cs",
    callback = function()
      vim.diagnostic.setloclist()
    end,
    })

vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  callback = function()
    -- salva o buffer atual silenciosamente ao sair dele
    vim.cmd("silent! write")
  end,
})

