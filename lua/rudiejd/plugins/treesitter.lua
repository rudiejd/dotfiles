return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "c_sharp", "javascript", "rust" },
                auto_install = true,

                highlight = {
                    enable = false,
                    additional_vim_regex_highlighting = false
                }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" }
    }
}
