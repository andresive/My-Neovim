
-- show the lines number setting
vim.cmd("set nu!")

-- nvim colors 24bits modification
vim.cmd("set termguicolors")

-- tab spaces modification
vim.opt.tabstop = 3     -- Número de espaços que um Tab representa
vim.opt.shiftwidth = 4   -- Número de espaços usados para indentação automática
vim.opt.softtabstop = 1  -- Número de espaços ao pressionar Tab em modo de inserção
vim.opt.expandtab = true -- Converte Tab em espaços

-- notification messages and notify configuration
vim.notify = require("notify")
vim.notify("Welcome abord captain", 'info', {title = "Info",})
vim.notify("All sistems On-line", 'info', {title = "Info",})

vim.cmd[[colorscheme tokyonight-night]]

vim.o.mousemoveevent = true -- ativa eventos de movimento do mouse
vim.o.updatetime = 1200      -- tempo de inatividade (ms) para acionar CursorHold

-- config for nvim markdown preview not close on exit page 
vim.g.mkdp_auto_close = 0
vim.g.mkdp_command_for_global = 1 
vim.g.mkdp_open_to_the_world = 0

-- white spaces show caracters config
vim.opt.list = true
vim.opt.listchars = {
    space = '·',   -- mostra espaços no meio
    tab = '→ ',    -- mostra tab
    trail = '•',   -- mostra espaços desnecessarios no final da linha
}

-- function for show notify of which lsp is active
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local lspClient = vim.lsp.get_client_by_id(args.data.client_id)
        local message = "Lsp active: " .. lspClient.name;

        -- saindo da função caso não tenha nenhum cliente lsp ativo
        if not lspClient then
            return
        end
        -- mensagem mostrando o lsp ativo
        vim.notify(message, "info", {title = "LSP Status",})
    end,
})
