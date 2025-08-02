return {
  "saghen/blink.cmp",
  lazy = false, -- Esto indica que el plugin no debe cargarse perezosamente
  dependencies = {
    -- "rafamadriz/friendly-snippets", -- Dependencia del plugin friendly-snippets
    'L3MON4D3/LuaSnip',
    version = 'v2.*'
  },
  version = '1.*',
  opts = function()
    return require("plugins.coding.blink.config").opts()
  end,
  config = function(_, opts)
    require("blink.cmp").setup(opts)
  end,
  opts_extend = { "sources.default" }
}
