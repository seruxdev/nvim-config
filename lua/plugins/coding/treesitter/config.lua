local M = {}

function M.opts()
  return {
    ensure_installed = {
      -- "angular",
      -- "awk",
      -- "bash",
      "c",
      -- "c_sharp",
      "cmake",
      "cpp",
      -- "css",
      -- "csv",
      -- "go",
      -- "haskell",
      -- "html",
      -- "http",
      "java",
      -- "javascript",
      -- "json",
      "lua",
      -- "luadoc",
      "make",
      -- "markdown",
      -- "markdown_inline",
      -- "nix",
      -- "perl",
      -- "python",
      -- "ruby",
      -- "rust",
      -- "sql",
      -- "toml",
      -- "typescript",
      -- "vim",
      -- "yaml",
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }
end

return M
