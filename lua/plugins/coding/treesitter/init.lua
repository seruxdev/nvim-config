return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  opts = function()
    require("plugins.coding.treesitter.config").opts()
  end,
  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
  end,
}
