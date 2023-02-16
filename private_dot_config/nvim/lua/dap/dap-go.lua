--
local dap = require('dap')

--[[ dap.adapters.go = {
    type = 'executable';
    command = 'node';
    args = {os.getenv('HOME') ..'/.local/share/nvim/mason/packages/go-debug-adapter/extension/dist/debugAdapter.js'};
}
dap.configurations.go = {
    {
        type = 'go';
        name = 'Debug';
        request = 'launch';
        showLog = false;
        program = "${file}";
        dlvToolPath = vim.fn.exepath(os.getenv('HOME')..'/.local/share/nvim/mason/packages/go-debug-adapter/go-debug-adapter')  -- Adjust to where delve is installed
    },
} ]]


-- delve
dap.adapters.delve = {
    type = 'server',
    port = '${port}',
    executable = {
        command = 'dlv',
        args = {'dap', '-l', '127.0.0.1:${port}'},
    }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
    {
        type = "delve",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    {
        type = "delve",
        name = "Debug test", -- configuration for debugging test files
        request = "launch",
        mode = "test",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages 
    {
        type = "delve",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    }
}



