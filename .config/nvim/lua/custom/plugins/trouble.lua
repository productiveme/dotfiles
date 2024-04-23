return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Open/close[X] trouble list" },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble [W]orkspace diagnostics" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble [D]ocument diagnostics" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble [Q]uickfix list" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble [L]ocation list" },
    { "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open [T]odos in trouble" },
  },
}
