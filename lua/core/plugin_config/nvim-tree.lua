-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    disable_netrw = true,
    -- reload_on_bufenter = true,
    -- respect_buf_cwd = true,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- open at startup
local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- auto close (https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close)
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
