return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
    config = function()
        local ls = require("toggleterm")
        ls.setup()
    end,
    vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=vertical size=60<CR>")
}
