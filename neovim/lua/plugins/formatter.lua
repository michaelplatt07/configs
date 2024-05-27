return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup({
            filetype = {
                -- Set up black for python
                python = {
                    require("formatter.filetypes.python").black
                },
                go = {
                    require("formatter.filetypes.go").gofumpt
                },
                lua = {
                    require("formatter.filetypes.lua").stylua 
                }
            }
        })
    end
}
