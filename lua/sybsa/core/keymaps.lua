local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- move lines in v mode --
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv", { desc = "mv lines up in v" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv", { desc = "mv lines down in v" })

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "disable search highlight" })
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)

-- replase word --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally" })

-- yank highlight --
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")   --open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")     --go to next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")     --go to pre
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab
