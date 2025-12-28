return {
  "nvim-telescope/telescope.nvim",
  branch = '0.1.x',
  event = "VeryLazy",
  dependencies = {
    {
      'nvim-lua/plenary.nvim',
      "nvim-telescope/telescope-live-grep-args.nvim",
      version = "^1.0.0",
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
    -- Solo para que funcione en windows
    -- {
    --   "nvim-telescope/telescope-fzf-native.nvim",
    --   build = "make", -- Build the plugin using make
    --   config = function()
    --     require("telescope").load_extension("fzf")
    --   end,
    -- },
  },
  opts = function()
    require("plugins.editor.telescope.config").opts()
  end,
  config = function(_, opts)
    require("telescope").setup(opts)
  end,
}
