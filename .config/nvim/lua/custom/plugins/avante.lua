return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- add any opts here
    provider = "o3mini", -- "lmstudio",
    auto_suggestions_provider = "deepseek", -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
    vendors = {
      o1mini = {
        __inherited_from = "openai",
        api_key_name = "OPENAI_API_KEY",
        endpoint = "https://api.openai.com/v1",
        model = "o1-mini",
      },
      o3mini = {
        __inherited_from = "openai",
        api_key_name = "OPENAI_API_KEY",
        endpoint = "https://api.openai.com/v1",
        model = "o3-mini",
      },
      lmstudio = {
        __inherited_from = "openai",
        api_key_name = "",
        endpoint = "http://127.0.0.1:1234/v1",
        model = "qwen2.5-coder-3b-instruct",
        -- model = "deepseek-r1-distill-qwen-7b",
      },
      ollama = {
        __inherited_from = "openai",
        api_key_name = "",
        endpoint = "http://127.0.0.1:11434/v1",
        model = "qwen2.5-coder",
      },
      deepseek = {
        provider = "openai",
        endpoint = "https://api.deepseek.com/v1",
        model = "deepseek-chat",
        timeout = 30000, -- timeout in milliseconds
        temperature = 0,
        max_tokens = 4096,
        -- optional
        api_key_name = "DEEPSEEK_API_KEY", -- default openai_api_key if not set
      },
    },
  },
  -- if you want to build from source then do `make build_from_source=true`
  build = "make",
  -- build = "powershell -executionpolicy bypass -file build.ps1 -buildfromsource false" -- for windows
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "muniftanjim/nui.nvim",
    --- the below dependencies are optional,
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "hakonharnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
