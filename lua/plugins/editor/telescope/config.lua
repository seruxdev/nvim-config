local M = {}
local actions = require("telescope.actions")

function M.opts()
  return {
    defaults = {
      path_display = { "smart" }, -- Display paths smartly
      file_ignore_patterns = {
        "node_modules",
        "package-lock.json",
        "yarn.lock",
        "bun.lockb",
      },
      prompt_prefix = "⮞ ", -- Set the prompt to just ">"
      selection_caret = " ",
      layout_strategy = "horizontal", -- Use horizontal layout
      sorting_strategy = "ascending", -- Sort results in ascending order
      -- winblend = 0, -- No transparency
      -- results_title = false, -- Remove the "Results" title
      -- borderchars = {
      --   prompt = { "─", " ", " ", " ", " ", " ", " ", " " }, -- Top border for the prompt only
      --   results = { " ", " ", " ", " ", " ", " ", " ", " " }, -- No borders for results
      --   preview = { "─", "│", " ", "│", "╭", "╮", "", "" }, -- Borders for the preview (top and sides)
      -- },
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Define los bordes.
      mappings = {
        i = {
          ["<C-Down>"] = actions.cycle_history_next,  -- Cycle to next history item
          ["<C-Up>"] = actions.cycle_history_prev,    -- Cycle to previous history item
          ["<C-n>"] = actions.preview_scrolling_down, -- Scroll preview down
          ["<C-p>"] = actions.preview_scrolling_up,   -- Scroll preview up
        },
        n = {
          ["q"] = actions.close,  -- Close the telescope window
          ["<leader>ff"] = false, -- Desactiva <leader>ff
          ["<leader>fs"] = false, -- Desactiva <leader>fs
        },
      },
    },

    -- Add hidden files and no-ignore options to file search and live_grep
    pickers = {
      find_files = {
        find_command = { "rg", "--files", "--hidden", "--no-ignore", "--iglob", "!.git/" },
      },
      live_grep = {
        additional_args = function()
          return { "--hidden", "--no-ignore" }
        end,
      },
    },

  }
end

return M
