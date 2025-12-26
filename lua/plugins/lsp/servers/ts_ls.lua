-- utils
local on_attach = require("plugins.lsp.utils.on_attach").on_attach
local capabilities = require('blink.cmp').get_lsp_capabilities()
local util = require 'lspconfig.util'

return {
  on_attach = on_attach,       -- Función para configurar atajos
  capabilities = capabilities, -- Habilitar capacidades como autocompletado
  default_config = {
    init_options = { hostInfo = 'neovim' },
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
    },
    root_dir = util.root_pattern('tsconfig.json', 'package.json', 'jsconfig.json', '.git'),
    single_file_support = true,
  },
  docs = {
    default_config = {
      root_dir = [[root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git")]],
    },
  },
}
