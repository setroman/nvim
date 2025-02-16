
-- ************************************ 
-- ***	MIS CONFIGURACIONES BÁSICAS ***
-- ************************************
local opt = vim.o

-- Setea el espacio como tecla principal <leader> = ' '
vim.g.mapleader = " "

opt.number = true -- Mostrar filas numeradas
opt.relativenumber = true -- Muestra los números de las filas de manera relativa

-- tabs & indentación (sangría)
opt.tabstop = 2 -- 2 espacios por tabs (prettier default)
opt.shiftwidth = 2 -- 2 espacios para el ancho de indentación 
opt.expandtab = true -- expande tab a espacios
opt.autoindent = true -- copia la sangria de la línea actual al comenzar una nueva

opt.wrap = false -- false: Los reglones se extienden más alla del limite de la ventana. true: Si el reglon supera el límite de la ventana, se extiente en el reglon siguiente

-- configuracion de búsqueda
opt.ignorecase = true -- ignora mayúsculas al reluzar búsquedas
opt.smartcase = true -- si se incluyen mayusculas y minúsculas en la búsqueda, pasa a modo sendible entre mayusculas y minusculas

opt.cursorline = true -- resalta la línea del cursor

-- (el terminal debe soportar true-colors)
opt.termguicolors = true -- activa colores del terminal para el tema de colores (colorschemes)
opt.background = "dark" -- colorschemes  que pueden ser claros u oscuro se oscureceran
opt.signcolumn = "yes" -- muestra una columna de símbolos

-- backspace
-- opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard:append("unnamedplus") -- registro de clipboard por defecto

-- split windows
opt.splitright = true -- divide la ventana vertical hacia la derecha
opt.splitbelow = true -- divide la ventana horizontal hacia abajo

-- turn off swapfile
opt.swapfile = false -- deshabilita el archivo de intercambio
