
-- ************************************ 
-- ***	MIS CONFIGURACIONES BÁSICAS ***
-- ************************************

return {
  -- 
  number = true, -- Mostrar filas numeradas
  relativenumber = true, -- Muestra los números de las filas de manera relativa
  -- tabs & indentación (sangría)
  tabstop = 2, -- 2 espacios por tabs (prettier default)
  shiftwidth = 2, -- 2 espacios para el ancho de indentación 
  expandtab = true, -- expande tab a espacios
  autoindent = true, -- copia la sangria de la línea actual al comenzar una nueva
  cursorline = false, -- resalta la línea del cursor

  wrap = false, -- false: Los reglones se extienden más alla del limite de la ventana.
  -- true: Si el reglon supera el límite de la ventana, se extiente en
  -- el reglon siguiente
  colorcolumn = "85", -- dibula una línea vertical

  -- configuracion de búsqueda
  ignorecase = true, -- ignora mayúsculas al relizar búsquedas
  smartcase = true,  -- sí se incluyen mayusculas y minúsculas en la búsqueda,
-- pasa a modo sendible entre mayusculas y minusculas

  shell = "powershell", -- usa powershell
  -- (el terminal debe soportar true-colors)
  termguicolors = true, -- activa colores del terminal para el tema de colores
  background = "dark", -- colorschemes  que pueden ser claros u oscuro se oscureceran
  signcolumn = "yes", -- muestra una columna de símbolos

  swapfile = false, -- deshabilita el archivo de intercambio

  -- split windows direction
  splitright = true, -- divide la ventana vertical hacia la derecha
  splitbelow = true, -- divide la ventana horizontal hacia abajo
}
