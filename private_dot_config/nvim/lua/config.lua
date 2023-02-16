local UserConfig = {
    --@class LSPConfig
    lsp = {
        -- jumps to the declaration
        definition = "gd",
        -- jumps to the declaration, many servers do not implement this method
        declaration = false,
        -- displays hover information
        hover = "gh",
        -- lists all the implementations
        implementation = "gi",
        -- lists all the references to the symbol
        references = "gr",

        rename = "<leader>rn",
        code_action = "<leader>ca",
        format = "<leader>f",
        -- diagnostic
        open_flow = "gp",
        goto_next = "gj",
        goto_prev = "gk",
        list = "gl",
    }
}
