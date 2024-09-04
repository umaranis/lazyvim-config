return {
  -- TODO: find a way to add comamnds from existing plugins (or add them manually)
  -- Currenly, it is loading all keymaps automatically from lazyvim
  -- Out of the box, it has excellent list of vim defaults
  -- It can be used to specify custom commmands (act like a cheat sheet)
  {
    "mrjones2014/legendary.nvim",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    dependencies = { "kkharji/sqlite.lua" },
    config = function()
      require("legendary").setup({
        commands = {
          {
            ":set diffopt+=iwhiteall",
            description = "Ignore white space in diff",
          },
        },
        extensions = {
          diffview = true,
          lazy_nvim = true,
        },
      })
    end,
    keys = {
      { "<leader>l", "<cmd>Legendary<cr>", desc = "Legendary" },
    },
  },
}
