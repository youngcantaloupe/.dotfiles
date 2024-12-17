return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "notes",
          path = "~/Notes",
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
    },
  },
}
