local builtin = require("telescope.builtin")

vim.g.mapleader = " "

-- Telescope --
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

-- Git --
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Toggle show keys --
vim.keymap.set("n", "<leader>sk", "<cmd>ShowkeysToggle<cr>", { desc = "Toggle showkeys" })
