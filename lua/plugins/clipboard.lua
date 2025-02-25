-- in your lua/plugins/clipboard.lua
return {
    "ojroques/nvim-osc52",
    config = function()
        require('osc52').setup {
            max_length = 0,
        }
        -- This makes the regular yank commands (y, yy) copy to clipboard
        local function copy()
            if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
                require('osc52').copy_register('"')
            end
        end
        vim.api.nvim_create_autocmd('TextYankPost', { callback = copy })
    end
}
