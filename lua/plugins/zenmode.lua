return
{
    "folke/zen-mode.nvim",
    config = function()
        vim.keymap.set("n", "<leader>zz", function()
            require("zen-mode").toggle({
                window = {
                    width = 1,
                    height = 1
                },
                plugins = {
                    gitsigns = { enabled = false }, -- disables git signs
                }
            })
            -- vim.cmd('colorscheme github_dark_high_contrast')
            vim.wo.wrap = false
            vim.wo.number = true
            vim.wo.rnu = true
        end)
    end
}
