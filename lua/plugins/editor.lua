return {
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    event = "VeryLazy",
    keys = {
      {
        "<leader>th",
        function()
          require("close_buffers").delete({
            type = "hidden",
          })
        end,
        "Close Hidden Buffers",
      },
      {
        "<leader>tu",
        function()
          require("close_buffers").delete({
            type = "nameless",
          })
        end,
        "Close Nameless Buffers",
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          winblend = vim.o.pumblend,
        },
      },
      signature = {
        window = {
          winblend = vim.o.pumblend,
        },
      },
    },
  },
}
