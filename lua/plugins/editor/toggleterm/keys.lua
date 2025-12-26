local wk = require("which-key")

wk.add({
  { "<A-2>", "<cmd>ToggleTerm<cr>", desc = " Terminal" },
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = true, noremap = true, silent = true })
  end,
})
