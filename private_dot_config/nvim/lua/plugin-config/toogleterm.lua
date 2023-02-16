local opt = require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    -- 以弹出式窗口的形式打开新终端
    direction = 'float'
})

local Terminal  = require('toggleterm.terminal').Terminal
local htopterm = Terminal:new({
    cmd = 'htop',
    direction = 'float'
})

local lazygitterm = Terminal:new({
    cmd = 'lazygit',
    direction = 'float'
})

function lazygit_toggle()
    lazygitterm:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lg", "<Cmd>lua lazygit_toggle()<CR>", {noremap = true, silent = true})

function htop_toggle()
    htopterm:toggle()
end

