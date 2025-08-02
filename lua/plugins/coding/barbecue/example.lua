-- Archivo para probar todos los contextos de 'barbecue'

-- contexto_file
local archivo = {}

-- contexto_module
local M = {}

-- contexto_namespace (Lua no tiene namespaces reales, se puede simular)
local Namespace = {}

-- contexto_package (no aplica directamente en Lua, pero como ejemplo)
local package_example = {}

-- contexto_class
---@class Persona
local Persona = {}
Persona.__index = Persona

-- contexto_constructor
function Persona:new(nombre, edad)
  local self = setmetatable({}, Persona)
  self.nombre = nombre -- contexto_field
  self.edad = edad     -- contexto_field
  return self
end

-- contexto_method
function Persona:hablar(mensaje)
  print(self.nombre .. " dice: " .. mensaje)
end

-- contexto_property (no real en Lua, simulación con metatables)
function Persona:get_nombre()
  return self.nombre
end

-- contexto_function
local function suma(a, b)
  return a + b
end

-- contexto_variable
local saludo = "Hola" -- variable local

-- contexto_constant
local PI = 3.1416

-- contexto_string
local frase = "Esto es una cadena"

-- contexto_number
local numero = 123

-- contexto_boolean
local es_activo = true

-- contexto_array
local numeros = { 1, 2, 3 }

-- contexto_object
local objeto = {
  clave = "valor" -- contexto_key
}

-- contexto_null (en Lua sería 'nil')
local valor_nulo = nil

-- contexto_enum
local Estado = {
  ACTIVO = 1,  -- contexto_enum_member
  INACTIVO = 2 -- contexto_enum_member
}

-- contexto_struct (simulado como tabla con estructura fija)
local Punto = {
  x = 0,
  y = 0
}

-- contexto_event (simulado, eventos no son nativos en Lua)
local function on_click()
  print("Clic detectado")
end

-- contexto_operator
local resultado = 5 * 2 + 3

-- contexto_type_parameter (simulado en Lua con genéricos teóricos)
---@generic T
---@param valor T
---@return T
local function identidad(valor)
  return valor
end

return {
  archivo = archivo,
  M = M,
  Namespace = Namespace,
  Persona = Persona,
  suma = suma,
  saludo = saludo,
  PI = PI,
  frase = frase,
  numero = numero,
  es_activo = es_activo,
  numeros = numeros,
  objeto = objeto,
  Estado = Estado,
  Punto = Punto,
  on_click = on_click,
  identidad = identidad,
}
