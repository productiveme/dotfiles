return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
          is_hidden = function(name)
            return vim.startswith(name, ".")
          end,
        },
      })
    end,
  },
}
