return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "github/copilot.vim",
    event = "VimEnter",
    enabled = false,
    keys = {
      { "<Tab>", "copilot#Accept()", { expr = true, silent = true, mode = "i" } },
      { "<S-Tab>", "copilot#Cancel()", { expr = true, silent = true, mode = "i" } },
    },
  },
}
