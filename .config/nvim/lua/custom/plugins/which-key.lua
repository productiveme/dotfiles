return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  delay = 500,
  expand = 1,
  config = function() -- This is the function that runs, AFTER loading
    local wk = require("which-key")
    wk.setup()
    wk.add({
      { "<leader>b", group = "Split [B]uffer" },
      { "<leader>c", group = "[C]ode" },
      { "<leader>ct", group = "[C]ode [T]est" },
      { "<leader>d", group = "[D][B] UI Toggle" },
      { "<leader>e", group = "[E]xplorer" },
      { "<leader>g", group = "[G]ithub" },
      { "<leader>h", group = "Git [H]unk" },
      { "<leader>n", group = "[N]o [H]ighlights" },
      { "<leader>o", group = "[O]bsidian" },
      { "<leader>p", group = "Har[p]oon" },
      { "<leader>r", group = "[R]efactor" },
      { "<leader>s", group = "[S]earch" },
      { "<leader>t", group = "[T]abs" },
      { "<leader>w", group = "[W]ork session" },
      { "<leader>x", group = "Trouble [X]" },
    })
  end,
}
