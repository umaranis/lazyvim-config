return {
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   config = function()
  --     require("colorizer").setup({ filetypes = { "css", "html" }, user_default_options = { names = true } })
  --   end,
  -- },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
  {
    "xiyaowong/transparent.nvim",
  },
}
