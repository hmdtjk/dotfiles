--
-- ~/.config/nvim/after/plugin/treesitter.lua
--

require "nvim-treesitter.configs".setup {
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
