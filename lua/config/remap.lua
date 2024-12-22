vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>j", "<C-]>") -- jump to link
vim.keymap.set("n", "<leader>w", vim.cmd.wa)
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>")
vim.keymap.set("n", "<leader>wq", vim.cmd.wq) -- will save the current buffer and exit the buffer, useful in some scenarios
vim.keymap.set("n", "<leader>waq", function() -- will save all buffers and exit
    vim.cmd.wa()
    vim.cmd.q()
end)
vim.keymap.set("n", "<leader>q", vim.cmd.q) -- will try to exit the current buffers if no changes are made
vim.keymap.set("n", "<leader>vv", vim.cmd.so)
-- move through windows
vim.keymap.set("n", "<Tab>h", "<C-w>h")
vim.keymap.set("n", "<Tab>j", "<C-w>j")
vim.keymap.set("n", "<Tab>k", "<C-w>k")
vim.keymap.set("n", "<Tab>l", "<C-w>l")
vim.keymap.set("n", "<Tab>s", "<C-w><C-v>") -- split the current window vertically and start editing the window on the right 
vim.opt.splitright = true -- windows split right
vim.keymap.set("n", "<Tab>n", vim.cmd.vnew) -- spawn a new window vertically right 
vim.keymap.set("n", "<Tab>x", "<C-w><C-q>") -- close the current window
