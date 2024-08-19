return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>sf", function() require("telescope.builtin").find_files() end },
        { "<leader>sG", function() require("telescope.builtin").git_files() end },
        { "<leader>sg", function() require("telescope.builtin").live_grep() end },
        { "<leader>sn", function() require("telescope.builtin").find_files { cwd = vim.fn.expand("~/Notes"), prompt_title = "Search Notes" } end },
        { "<leader>sN", function() require("telescope.builtin").live_grep() { cwd = vim.fn.expand("~/Notes"), prompt_title = "Grep Notes" } end },
        { "<leader>sc", function() require("telescope.builtin").find_files { cwd = vim.fn.expand("~/.config"), prompt_title = "Search Config" } end }
    }
}
