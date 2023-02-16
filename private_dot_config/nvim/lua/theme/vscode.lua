vim.o.background = 'dark'

local c = require("vscode.colors")
require("vscode").setup({
    transparent = true,
    italic_comments = false,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    }
})

vim.cmd[[colorscheme vscode]]
