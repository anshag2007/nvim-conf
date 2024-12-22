return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>git", vim.cmd.Git)

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git('push')
                end, opts)

                -- rebase always
                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({ 'pull', '--rebase' })
                end, opts)

                -- NOTE: It allows me to easily set the branch i am pushing and any tracking
                -- needed if i did not set the branch up correctly
                vim.keymap.set("n", "<leader>gp", function()
                    vim.cmd.Git('push')
                    vim.fn.jobstart(vim.cmd.Git('push'), {
                        on_exit = function()
                            vim.cmd("normal! \\<CR>")
                            vim.cmd.q()
                        end
                    })
                end, opts);
                vim.keymap.set("n", "<leader>gc", ":Git commit -a ", opts);
                vim.keymap.set("n", "<leader>gy", ":Git add ", opts);
            end,
        })


        -- vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
        -- vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
        vim.keymap.set("n", "<leader>_", function()
            vim.cmd.Git('push')
        end)
        vim.keymap.set("n", "<leader>-", function()
            vim.cmd.Git('commit -a')
        end)
    end
}
