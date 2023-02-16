-- 设置leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 保存本地变量
-- map('模式','按键','映射为XX',opt)
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- 设置ctrl u d翻页行数
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)
map("n", "<C-s>", ":w<CR>", opt)

-- visual 模式下可以连续 > 缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)


map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制（不常用，因为支持鼠标拖拽）
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)


map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)


-- nvim-tree short key
-- alt+m 打开菜单 -> a 创建文件 -> o 打开文件夹 ->
-- r 重命名为 -> c 拷贝 -> p 粘贴 -> d 删除文件
map("n", "<F2>", ":NvimTreeToggle<CR>",opt)



-- bufferline switch
map("n", "gt", ":BufferLineCyclePrev<CR>", opt)
map("n", "gT", ":BufferLineCycleNext<CR>", opt)

-- 格式化代码
map("n", "<leader>i", "gg=G", opt)

-- terminal setting
map("t", "<ESC>", "<C-\\><C-n>", {noremap = true, silent = true})
map("n", "<A-=>", ":split term://zsh<CR>", {noremap = true, silent = true})
map("t", "<A-=>", "<C-\\><C-n>:bdelete! %<CR>", {noremap = true, silent = true})

-- 自带的term
vim.api.nvim_set_keymap("t", "<leader>1", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>2", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>3", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>4", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>5", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>6", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>7", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>8", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>9", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>bg", "<C-\\><C-n>:BufferLinePick<CR>", {noremap = true, silent = true})

-- toolgeterm
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>l", "<Cmd> wincmd l<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>h", "<Cmd> wincmd h<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>j", "<Cmd> wincmd j<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>k", "<Cmd> wincmd k<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ht", "<Cmd>lua htop_toggle()<CR>", {noremap = true, silent = true})


vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fw", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})

-- bufferline
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePickClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bo", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", {noremap = true, silent = true})

-- dap 快捷键
vim.keymap.set({"i", "n", "v"}, "<F5>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F10>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true, buffer = bufnr})

local lsp_keybinds = {}
lsp_keybinds.set_keymap = function (bufnr)
    -- 跳转到声明
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true, noremap = true})
    -- 跳转到定义
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true, noremap = true})
    -- 显示注释文档
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true, noremap = true})
    -- 跳转到实现
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true, noremap = true})
    -- 跳转到引用位置
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {silent = true, noremap = true})
    -- 以浮窗形式显示错误
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {silent = true, noremap = true})
end

return lsp_keybinds




-- bufferiline 
