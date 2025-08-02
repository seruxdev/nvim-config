-- utils
local on_attach = require("plugins.lsp.utils.on_attach").on_attach
local capabilities = require('blink.cmp').get_lsp_capabilities()
local util = require 'lspconfig.util'

return {
  on_attach = on_attach,       -- Función para configurar atajos
  capabilities = capabilities, -- Habilitar capacidades como autocompletado
  -- config
  default_config = {
    cmd = { 'intelephense', '--stdio' },
    filetypes = { 'php' },
    root_dir = function(pattern)
      local cwd = vim.loop.cwd()
      local root = util.root_pattern(
        'composer.json', -- Proyectos PHP en general
        'index.php',     -- Proyectos sencillos PHP
        'wp-config.php', -- WordPress
        'artisan',       -- Laravel
        '.git'           -- Siempre considerar repositorios Git
      )(pattern)

      -- prefer cwd if root is a descendant
      return util.path.is_descendant(cwd, root) and cwd or root
    end,
  },
  docs = {
  },
}
