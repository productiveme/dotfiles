return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    local keymap = vim.keymap
    keymap.set("n", "<leader>pa", function()
      harpoon:list():add()
    end, { desc = "[A]dd file to harpoon" })
    keymap.set("n", "<leader>sp", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open har[P]oon menu" })
    keymap.set("n", "<leader>p1", function()
      harpoon:list():select(1)
    end, { desc = "Go to harpoon file [1]" })
    keymap.set("n", "<leader>p2", function()
      harpoon:list():select(2)
    end, { desc = "Go to harpoon file [2]" })
    keymap.set("n", "<leader>p3", function()
      harpoon:list():select(3)
    end, { desc = "Go to harpoon file [3]" })
    keymap.set("n", "<leader>p4", function()
      harpoon:list():select(4)
    end, { desc = "Go to harpoon file [4]" })
    keymap.set("n", "<leader>p5", function()
      harpoon:list():select(5)
    end, { desc = "Go to harpoon file [5]" })
    keymap.set("n", "<leader>pn", function()
      harpoon:list():next()
    end, { desc = "[N]ext harpoon file" })
    keymap.set("n", "<leader>pp", function()
      harpoon:list():prev()
    end, { desc = "[P]revious harpoon file" })
  end,
}
