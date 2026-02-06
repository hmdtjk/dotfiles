--
-- ~/.config/nvim/lua/mappings.lua
--

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>n", vim.cmd.bnext)
vim.keymap.set("n", "<leader>p", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>b", vim.cmd.buffers)

vim.keymap.set("n", "<leader>o", function()
    local file = vim.fs.joinpath(
        vim.b.netrw_curdir,
        vim.fn.eval("netrw#Call('NetrwGetWord')")
    )
    vim.fn.system({"xdg-open", file})
end)
