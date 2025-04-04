-- **************************************
-- ***  Atajos básico de teclas       ***
-- **************************************

local m = require("core.keymapper")

-- Tecla lider
m.km("","<Space>","Nop")
-- Setea el espacio como tecla principal <leader> = ' '
vim.g.mapleader = " "

-- Escape y movimientos en modo insert (Modo Insert)
m.ikm("jk", "<ESC>", "Sale del modo insertar")
m.ikm("<C-j>", "<Down>", "Mueve el cursor hacia abajo")
m.ikm("<C-k>", "<Up>", "Mueve el cursor hacia arriba")
m.ikm("<C-h>", "<Left>", "Mueve el cursor a la izquierda")
m.ikm("<C-l>", "<Right>", "Mueve el cursor a la derecha")

-- Selecciones
m.nkm("<leader>nh", ":nohl<CR>", "Resalte de busqueda borrado")

-- increment/decrement numbers
-- m.nkm("<leader>+", "<C-a>", "Incrementa número") -- incremento
-- m.nkm("<leader>-", "<C-x>", "Decrementa número") -- decremento

-- administeación de ventana (Modo Normal)
m.nkm("<leader>sv", "<C-w>v", "Divide la ventana verticalmente") -- divide la ventana vertilalmente
m.nkm("<leader>sh", "<C-w>s", "Divide la ventana horizontalmente") -- divide la ventana horizontalmente
m.nkm("<leader>se", "<C-w>=", "Divisiones del mismo tamaño") -- hacer las diviciones del mismo ancho y alto
m.nkm("<leader>sx", "<cmd>close<CR>", "Cierra la divición actual") -- cierra la división actual de la ventana
m.nkm("+",[[<cmd>vertical resize +5<cr>]],"Agranda verticalmente la ventana")
m.nkm("*",[[<cmd>vertical resize -5<cr>]],"Achica verticalmente la ventana")
m.nkm("-",[[<cmd>horizontal resize +2<cr>]],"Agranda horizontalmente la ventana")
m.nkm("_",[[<cmd>horizontal resize -2<cr>]],"Achica horizontalmente la ventana")
m.nkm("<C-l>", "<C-w><C-l>", "Moverse a la división derecha")
m.nkm("<C-k>", "<C-w><C-k>", "Moverse a la división de arriba")
m.nkm("<C-j>", "<C-w><C-j>", "Moverce a la división de abajo")
m.nkm("<C-h>", "<C-w><C-h>", "Moverse a la división izquierda")

-- administeación de pestañas (Modo Normal)
m.nkm("<leader>to", "<cmd>tabnew<CR>", "Nueva pestaña") -- nueva pestaña
m.nkm("<leader>tx", "<cmd>tabclose<CR>", "Cerrar pestaña actual") -- cierra la pestaña actual
m.nkm("<leader>tn", "<cmd>tabn<CR>", "Pestaña siguiente") --  ir a la proxima pestaña
m.nkm("<leader>tp", "<cmd>tabp<CR>", "Pestaña anterior") --  ir a la pestaña previa
m.nkm("<leader>tf", "<cmd>tabnew %<CR>", "Abre el buffer actual en una nueva pestaña") --  mueve el buffer actual a una nueva pestaña

-- terminal (Modo Terminal)
m.tkm("<Esc><Esc>", "<C-\\><C-n>", "Vuelve al modo normal")
--- Modo Normal
m.nkm("<leader>tv","<cmd>vs<CR><cmd>terminal<CR>")
m.nkm("<leader>th","<cmd>vp<CR><cmd>terminal<CR>")

-- Sangria (indentado) (Modo Vista)
m.vkm("<","<gv","Deshacer sangria")
m.vkm(">",">gv","Aumenta sangria")

-- Movimiento de texto envuelto
--- Modo Normal
m.nkm("<A-j>", ":m+1<CR>", "Mueve la línea hacia abajo")
m.nkm("<A-k>", ":m-2<CR>", "Mueve la línea hacia arriba")
--- Modo Vista
m.vkm( "<A-j>", ":m '>+1<CR>gv=gv", "Mueve las líneas seleccionadas hacia abajo")
m.vkm( "<A-k>", ":m '<-2<CR>gv=gv", "Mueve las línea seleccionadas hacia arriba")
