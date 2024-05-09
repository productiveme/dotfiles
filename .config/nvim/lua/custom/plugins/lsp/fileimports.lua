return {
  "kristijanhusak/vim-js-file-import",
  dependencies = {
    "ludovicchabant/vim-gutentags",
  },
  config = function()
    vim.g.js_file_import_no_mappings = 1
    vim.keymap.set("n", "<leader>ci", "<Plug>(JsFileImport)", {})
    vim.opt.wildignore:append({ "**/node_modules/**", "**/cache/**", "**/.meteor/**", "**/.deploy/**" })
  end,
}
