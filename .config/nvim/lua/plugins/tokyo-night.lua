return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
                require("tokyonight").setup({
            on_highlights = function(hl, c)
                -- Update the borders with your Polybar colors
                hl.TelescopeBorder = {
                    fg = "#48887e", -- Use primary color from Polybar
                    bg = c.bg_dark, -- Preserve the original background
                }
                hl.TelescopePromptBorder = {
                    fg = "#8ABEB7", -- Use secondary color from Polybar
                    bg = c.bg_dark, -- Preserve the original background
                }
                hl.TelescopeResultsBorder = {
                    fg = "#73daca", -- Use foreground color from Polybar
                    bg = c.bg_dark, -- Preserve the original background
                }
                hl.TelescopePreviewBorder = {
                    fg = "#73daca", -- Use foreground color from Polybar
                    bg = c.bg_dark, -- Preserve the original background
                }
                hl.TelescopePromptTitle = {
                    fg = "#48887e", -- Use primary color from Polybar
                    bg = c.bg_dark, -- Preserve the original background
                }
            end,
        })
        vim.cmd([[colorscheme tokyonight-night]])
        vim.api.nvim_set_hl(0, "Directory", { fg = "#73daca" })

    end
}
