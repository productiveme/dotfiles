return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    require("jdtls").start_or_attach({ cmd = { "jdtls" } })
  end,
}
