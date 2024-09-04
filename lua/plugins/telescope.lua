return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_config = {
          prompt_position = "top", -- Keep the prompt at the top
        },
        sorting_strategy = "ascending", -- Show results in ascending order
      },
    },
  },
  -- provides better performance as a native implementation instead of lua
  -- support fzf search syntax
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  --
  -- search tabs using telescope
  {
    "LukasPietzschmann/telescope-tabs",
    keys = {
      { "<leader><tab>t", "<cmd>Telescope telescope-tabs list_tabs<cr>", desc = "List tabs" },
    },
    config = function()
      require("telescope").load_extension("telescope-tabs")
      require("telescope-tabs").setup({
        -- Your custom config :^)
      })
    end,
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
  --
  -- add a new picker called smart_open
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      -- Only required if using match_algorithm fzf
      -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- Optional.  If installed, native fzy will be used when match_algorithm is fzy
      -- { "nvim-telescope/telescope-fzy-native.nvim" },
    },
    keys = {
      { "<leader>fo", "<cmd>Telescope smart_open<cr>", desc = "Smart Open" },
    },
  },
}
