return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = function()
    return require("plugins.editor.toggleterm.config").opts()
  end,
  config = function(_, opts)
    require("toggleterm").setup(opts)
  end,
}
