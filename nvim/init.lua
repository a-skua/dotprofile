local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

vim.filetype.add({
    extension = {
        vto = "vento",
    }
})

require("nvim-treesitter.configs").setup({
    ensure_installed = { "vento" },
})
