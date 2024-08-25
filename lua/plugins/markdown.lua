return {
  {
    "MeanderingProgrammer/markdown.nvim",
    opts = function(_, opts)
      opts.heading = {
        sign = true,
      }
    end,
  },
  {
    "dhruvasagar/vim-table-mode",
  },
  -- {
  --   "lukas-reineke/headlines.nvim",
  --   dependencies = "nvim-treesitter/nvim-treesitter",
  --   config = true, -- or `opts = {}`
  -- },
  -- {
  --   --I like markview indentation and heading formatting
  --   --but the editing experience is horrible
  --   "OXY2DEV/markview.nvim",
  --   lazy = false, -- Recommended
  --   -- ft = "markdown" -- If you decide to lazy-load anyway
  --
  --   dependencies = {
  --     -- You will not need this if you installed the
  --     -- parsers manually
  --     -- Or if the parsers are in your $RUNTIMEPATH
  --     "nvim-treesitter/nvim-treesitter",
  --
  --     "nvim-tree/nvim-web-devicons",
  --   },
  -- },
}
