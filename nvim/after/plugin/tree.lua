-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.cmd [[au ColorScheme * hi Normal ctermbg=none guibg=none]]

local function custom_tab_behavior()
    -- Call the nvim-tree function
    require 'nvim-tree.api'.node.open.preview()

    -- Add your additional commands here
    -- For example, print a message
    print("Additional command executed")
end

vim.api.nvim_set_keymap('n', '<leader>o', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

