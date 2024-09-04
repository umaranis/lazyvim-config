return {
  -- awesome git plugin, don't know why it is not more popular
  -- VSCode like file or branch history
  -- supports collapsing regions
  -- https://github.com/sindrets/diffview.nvim?tab=readme-ov-file
  {
    "sindrets/diffview.nvim",
  },
  {
    "topaxi/gh-actions.nvim",
    keys = {
      { "<leader>ga", "<cmd>GhActions<cr>", desc = "Open Github Actions" },
    },
    -- optional, you can also install and use `yq` instead.
    build = "make",
    ---@type GhActionsConfig
    opts = {},
  },
}
