local M = {}
local mocha = require("catppuccin.palettes").get_palette("mocha")

function M.opts()
  return {
    show_navic = true,
    show_dirname = false,
    show_modified = false,
    context_follow_icon_color = true,
    theme = {
      normal = { fg = mocha.text },

      -- these highlights correspond to symbols table from config
      ellipsis = { fg = mocha.surface2 },
      separator = { fg = mocha.maroon },
      modified = { fg = mocha.peach },

      -- these highlights represent the _text_ of three main parts of barbecue
      dirname = { fg = mocha.subtext0 },
      basename = { bold = true, fg = mocha.text },
      context = { fg = mocha.text },

      -- these highlights are used for context/navic icons
      context_file = { fg = mocha.blue },
      context_module = { fg = mocha.text },
      context_namespace = { fg = mocha.lavender },
      context_package = { fg = mocha.text },

      -- Tipos de clase y estructuras similares
      context_class = { fg = mocha.yellow },
      context_interface = { fg = mocha.teal },
      context_struct = { fg = mocha.teal },
      context_enum = { fg = mocha.teal },
      context_enum_member = { fg = mocha.teal },

      -- Miembros de clases u objetos
      context_method = { fg = mocha.blue },
      context_property = { fg = mocha.lavender },
      context_field = { fg = mocha.lavender },
      context_constructor = { fg = mocha.sapphire },

      -- Fundamentales
      context_function = { fg = mocha.mauve },
      context_variable = { fg = mocha.lavender },
      context_constant = { fg = mocha.lavender },

      -- Tipos de datos Simples
      context_string = { fg = mocha.lavender },
      context_number = { fg = mocha.lavender },
      context_boolean = { fg = mocha.lavender },
      context_null = { fg = mocha.text },

      -- Tipos de datos Compuestos (Estructuras de datos)
      context_array = { fg = mocha.peach },
      context_object = { fg = mocha.peach },
      context_key = { fg = mocha.blue },

      -- Otros
      context_event = { fg = mocha.flamingo },
      context_operator = { fg = mocha.sky },
      context_type_parameter = { fg = mocha.text },
    },
    kinds = {
      -- Estructuras de archivo y organización
      File = "", -- Archivo individual
      Module = "", -- 	Módulo de código (como un archivo exportable)
      Namespace = "", -- Agrupación lógica de código (similar a módulo)
      Package = "", -- Paquete de clases o módulos (nivel superior)

      -- Tipos de clase y estructuras similares
      Class = "", -- Definición de clase
      Interface = "", -- Interfaz (solo definición, sin implementación)
      Struct = "", -- Estructura (como clase simple en C/C++)
      Enum = "", -- Enumeración (conjunto de constantes)
      EnumMember = "",

      -- Miembros de clases u objetos
      Method = "", -- Método (función dentro de clase)
      Property = "", -- Propiedad (acceso tipo getter/setter)
      Field = "", -- Campo o atributo directo
      Constructor = "", -- Función especial de una clase

      -- Fundamentales
      Function = "󰊕", -- Función
      Variable = "", -- Variable local o global
      Constant = "", -- Constante

      -- Tipos de datos Simples
      String = "",
      Number = "",
      Boolean = "",
      Null = "󰟢",

      -- Tipos de datos Compuestos (Estructuras de datos)
      Array = "󰅪", -- Lista o arreglo
      Object = "󰅩", -- Estructura clave/valor (diccionario)
      Key = "󰌆", -- Clave de un objeto/mapa

      -- Otros
      Event = "", -- Evento (puede dispararse, como en UI)
      Operator = "", -- Operador (suma, resta, etc.)
      TypeParameter = "", -- Parámetro genérico de tipo (<T> en Java, por ej.)
    },
  }
end

return M
