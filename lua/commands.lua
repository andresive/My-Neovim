-- command for Telescope Search on open file in buffer
vim.api.nvim_create_user_command("TeleSearch",  function()
    vim.cmd("Telescope current_buffer_fuzzy_find")
end,
{}
)

-- command for Telescope search on directory open 
vim.api.nvim_create_user_command("TeleSearchAll", function()
    vim.cmd("Telescope live_grep")
end,
    {}
)


