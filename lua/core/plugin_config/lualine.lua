require('lualine').setup {
--    options = {
--        theme = 'gruvbox',
--    },
    sections = {
        -- show path with filename
        lualine_c = { { 'filename', path = 1 } }
    }
}
