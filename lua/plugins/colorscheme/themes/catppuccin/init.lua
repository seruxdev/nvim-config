return {
  'catppuccin/nvim',   -- Nombre del plugin
  name = 'catppuccin', -- Nombre del tema
  priority = 1000,     -- Asegura que se cargue antes que otros temas
  opts = function()
    return require("plugins.colorscheme.themes.catppuccin.config").opts()
  end,
  config = function(_, opts) -- Configuración para aplicar el tema
    require("catppuccin").setup(opts)
  end,
}
