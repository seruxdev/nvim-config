require("mason").setup({
  ui = {
    border = "rounded",
    keymaps = {
      uninstall_package = "<C-x>", -- para desinstalar
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",       -- lua
    -- "phpactor", -- php
    "intelephense", -- php
    -- "jdtls",
    -- "pyright",
    "ts_ls", -- javascript, typeScript
    -- "clangd",
  },
})
