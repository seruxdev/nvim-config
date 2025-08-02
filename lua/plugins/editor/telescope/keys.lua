local wk = require("which-key")
local builtin = require("telescope.builtin")

-- Configuración para Telescope
wk.add({
  { "<leader>f",  group = "Telescope" },
  { "<leader>ff", builtin.find_files, desc = "Telescope Find Files" }, -- Buscar archivos
  { "<leader>fg", builtin.live_grep,  desc = "Telescope Live Grep" },  -- Buscar texto
  { "<leader>fb", builtin.buffers,    desc = "Telescope Buffers" },    -- Ver buffers
  { "<leader>fh", builtin.help_tags,  desc = "Telescope Help Tags" },  -- Ver ayuda
  {
    "<leader>fa",
    function()
      require("telescope").extensions.live_grep_args.live_grep_args()
    end,
    desc = "Telescope Live Grep (Args)", -- Grep con argumentos
  },
})
