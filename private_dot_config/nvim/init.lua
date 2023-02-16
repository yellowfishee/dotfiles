require('basic')
require('keybindings')
require('plugins')
require('plugin-config/bufferline')
require('plugin-config/nvim-treesitter')
require("plugin-config/lualine")
require('plugin-config.dashboard')
require("plugin-config/which-key")
require("plugin-config/toogleterm")
require("plugin-config/telescope")
require("plugin-config/auto-session")
require("plugin-config/cmp")
require("plugin-config/mason")
require("plugin-config/symbols-outline")
require("plugin-config.auto-paris")
require('plugin-config/nvim-tree')

-- dap
require('dap.dap-ui')
require("dap.dap-virtual-text")
-- require('dap.dapgo-go')
require('dap-go').setup()

require("theme/kanagawa")
-- require('theme/vscode')

-- git
require('plugin-config.gitsigns')
require("plugin-config.vgit")

-- formatter
require('formatter.null_ls')


