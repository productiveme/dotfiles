-- Highlight yanked selection
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Global function to create a github issue from buffer contents
function CreateGHIssue()
  vim.cmd("tabedit! .gh-issue-create.md")
  local current_buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_lines(current_buf, 0, -1, false, {
    "New Issue Title",
    "",
    "The contents of this buffer will be added to the issue description. If you want to include a code block, markdown is allowed. (:write buffer when you're done. A new issue will be created on Github for the current repository and the tab will be closed)",
  })
  vim.api.nvim_create_autocmd("BufWritePost", {
    buffer = current_buf,
    group = vim.api.nvim_create_augroup("github-issue", { clear = true }),
    callback = function()
      local title = vim.api.nvim_buf_get_lines(current_buf, 0, 1, false)[1]
      local cmd = '!gh issue create -a "@me" -t "' .. title .. '" -F .gh-issue-create.md'
      vim.schedule(function()
        vim.api.nvim_command(cmd)
        vim.schedule(function()
          vim.api.nvim_command("!rm .gh-issue-create.md")
        end)
      end)
      if vim.api.nvim_get_current_buf() == current_buf then
        vim.api.nvim_command("tabclose")
      end
    end,
  })
end

-- GitHub Issues
vim.keymap.set("n", "<leader>gi", CreateGHIssue, { silent = true, desc = "Create [G]itHub [I]ssue" })
