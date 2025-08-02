return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = function()
    return require("plugins.coding.barbecue.config").opts()
  end,
  config = function(_, opts)
    require("barbecue").setup(opts)
  end,
}
