return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "folke/twilight.nvim",
  },
  {
    "vim-test/vim-test",
    dependencies = {
      "preservim/vimux",
    },
    keys = {
      { "<leader>ctn", "<cmd>TestNearest<cr>", desc = "[C]ode [T]est [N]earest" },
      { "<leader>ctf", "<cmd>TestFile<cr>", desc = "[C]ode [T]est [F]ile" },
      { "<leader>cts", "<cmd>TestSuite<cr>", desc = "[C]ode [T]est [S]uite" },
      { "<leader>ctl", "<cmd>TestLast<cr>", desc = "[C]ode [T]est [L]ast" },
      { "<leader>ctv", "<cmd>TestVisit<cr>", desc = "[C]ode [T]est [V]isit" },
      { "<leader>cta", "<cmd>TestSuite<cr>", desc = "[C]ode [T]est [A]ll" },
    },
    vim.cmd("let test#strategy = 'vimux'"),
  },
}
