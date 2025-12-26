return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup(
      {
        override = {
          -- json = { icon = "", color = "#cbcb41", name = "Json" },
          -- js = { icon = "", color = "#F1E05A", name = "Js" },
          -- java = { icon = "", color = "#B54B3A", name = "Java" },

          ["README.md"] = { icon = "", color = "#519ABA", name = "Readme" },
          ["README"] = { icon = "", color = "#519ABA", name = "Readme" },

          ["css"] = {
            icon = "",
            color = "#61AFEF",
            name = "Css"
          },

          ["postcss.config.mjs"] = {
            icon = "󱏿", -- icono de Tailwind (requiere Nerd Font 3.x)
            color = "#38BDF8",
            name = "TailwindPostCSS"
          },

          ["postcss.config.js"] = {
            icon = "󱏿",
            color = "#38BDF8",
            name = "TailwindPostCSS"
          },
          ["postcss.config.cjs"] = {
            icon = "󱏿",
            color = "#38BDF8",
            name = "TailwindPostCSS"
          },
          ["postcss.config.ts"] = {
            icon = "󱏿",
            color = "#38BDF8",
            name = "TailwindPostCSS"
          },

          ["package.json"] = {
            icon = "󰅩", -- 
            color = "#cbcb41", -- #6CA35E
            name = "PackageJson"
          },

          ["ts"] = {
            icon = "󰛦",
            color = "#519ABA",
            name = "Ts"
          },

          ["tsx"] = {
            icon = "",
            color = "#4298BA", -- tono más oscuro que #3178C6 para diferenciarlo
            name = "React"
          },

          ["tsconfig.json"] = {
            icon = "",
            color = "#4298BA", -- tono más oscuro que #3178C6 para diferenciarlo
            name = "TsConfig"
          },

          ["next.config.ts"] = {
            icon = "",
            color = "#4298BA", -- tono más oscuro que #3178C6 para diferenciarlo
            name = "TsConfig"
          },

          ["next-env.d.ts"] = {
            icon = "",
            color = "#4298BA", -- tono más oscuro que #3178C6 para diferenciarlo
            name = "TsConfig"
          },

        },
        default = true, -- Usa iconos por defecto si no hay especificación
      })
  end,
}
