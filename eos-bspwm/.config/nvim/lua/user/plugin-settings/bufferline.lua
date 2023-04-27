require("bufferline").setup{
    options = {
        offsets = {{
            filetype = "NvimTree", text = "", padding = 1 -- Offset from NvimTree
        }},
        close_command = "BufDel %d",
        right_mouse_command = "BufDel %d"
    },
}
