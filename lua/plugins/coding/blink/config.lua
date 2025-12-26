local M = {}

function M.opts()
  return {
    snippets = { preset = 'luasnip' },
    signature = { enabled = true, window = { border = 'rounded' } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    appearance = {
      nerd_font_variant = 'mormal'
    },
    fuzzy = {
      sorts = { "exact", "score", "sort_text" },
    },
    keymap = {
      preset = 'default',
    },
    completion = {
      menu = {
        auto_show = true,
        min_width = 10,
        max_height = 10,
        border = "rounded",
        winblend = vim.o.pumblend,
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        draw = {
          columns = { { "label", "label_description", "source_name", gap = 1 }, { "kind_icon", "kind" } },
        },
      },
      documentation = {
        auto_show = false,
        treesitter_highlighting = true,
        window = {
          min_width = 10,
          max_width = 60,
          max_height = 20,
          border = "rounded",
          winblend = vim.o.pumblend,
          scrollbar = true,
          direction_priority = {
            menu_north = { "e", "w", "n", "s" },
            menu_south = { "e", "w", "s", "n" },
          },
        },
      },
      ghost_text = {
        enabled = false,
        show_without_selection = true,
      },
    },
  }
end

return M
