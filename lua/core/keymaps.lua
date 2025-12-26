require("plugins.editor.neo-tree.keys")
require("plugins.editor.telescope.keys")
require("plugins.editor.toggleterm.keys")

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "󰆓 Save File", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "󰆓 Save & Quit", noremap = true, silent = true })

-- Clipboard
vim.keymap.set('v', '<C-y>', '"+y', { noremap = true, silent = true })

-- Borra el mapeo dento de neotree, sin tocar nada mas
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.keymap.set("n", "<A-f>", "<nop>", { buffer = true })
  end,
})

-- local builtin = require("telescope.builtin")
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
