return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = {
        lua_ls = require("plugins.lsp.servers.lua_ls"),
        -- phpactor = require("plugins.lsp.servers.phpactor"),
        intelephense = require("plugins.lsp.servers.intelephense"),
        -- jdtls = require("plugins.lsp.servers.jdtls"),
        -- pyright = require("plugins.lsp.servers.pyright"),
        ts_ls = require("plugins.lsp.servers.ts_ls"),
        -- clangd = require("plugins.lsp.servers.clangd"),
      }

      for name, config in pairs(servers) do
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}
