vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>SymbolsOutline<CR>", {silent = true, noremap = true})

require("symbols-outline").setup()
