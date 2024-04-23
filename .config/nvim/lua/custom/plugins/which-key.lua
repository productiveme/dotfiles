return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function() -- This is the function that runs, AFTER loading
    require("which-key").setup()

    -- Document existing key chains
    require("which-key").register({
      ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
      ["<leader>ct"] = { name = "[C]ode [T]est", _ = "which_key_ignore" },
      ["<leader>e"] = { name = "[E]xplorer", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
      ["<leader>n"] = { name = "[N]o [H]ighlights", _ = "which_key_ignore" },
      ["<leader>d"] = { name = "[D][B] UI Toggle", _ = "which_key_ignore" },
      ["<leader>o"] = { name = "[O]bsidian", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[R]efactor", _ = "which_key_ignore" },
      ["<leader>x"] = { name = "Trouble [X]", _ = "which_key_ignore" },
      ["<leader>b"] = { name = "Split [B]uffer", _ = "which_key_ignore" },
      ["<leader>t"] = { name = "[T]abs", _ = "which_key_ignore" },
      ["<leader>w"] = { name = "[W]ork session", _ = "which_key_ignore" },
      ["<leader>g"] = { name = "[G]ithub", _ = "which_key_ignore" },
      ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
    })
  end,
}
