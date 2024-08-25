return {
  {
    -- Uninstalled the default sqlfluff because
    -- 1- it can't format where clauses (missing select)
    -- 2- it shows a lot of linting errors (e.g. complains about * in select)
    --
    -- Installed sqlfmt through Mason and enabled it here in `conform`
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["sql"] = { "sqlfmt" },
      },
    },
  },
}
