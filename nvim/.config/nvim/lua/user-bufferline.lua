require("bufferline").setup {
    options = {
        separator_style = "slant",
        diagnostics = "coc",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            },
        },
    }
}
