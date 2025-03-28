
-- **************************************
-- ***  Atajos básico de teclas       ***
-- **************************************

local function keymap(mode, lhs, rhs, desc) -- método para abreviar 
  vim.keymap.set(mode, lhs, rhs,{ desc = desc })
end

-- Escape y movimientos en modo insert
keymap("i", "jk", "<ESC>", "Sale del modo insertar")
keymap("i", "<C-j>", "<Down>", "Mueve el cursor hacia abajo")
keymap("i", "<C-k>", "<Up>", "Mueve el cursor hacia arriba")
keymap("i", "<C-h>", "<Left>", "Mueve el cursor a la izquierda")
keymap("i", "<C-l>", "<Right>", "Mueve el cursor a la derecha")

keymap("n", "<leader>nh", ":nohl<CR>", "Resalte de busqueda borrado")

-- increment/decrement numbers
-- keymap("n", "<leader>+", "<C-a>", "Incrementa número") -- incremento
-- keymap("n", "<leader>-", "<C-x>", "Decrementa número") -- decremento

-- administeación de ventana
keymap("n", "<leader>sv", "<C-w>v", "Divide la ventana verticalmente") -- divide la ventana vertilalmente
keymap("n", "<leader>sh", "<C-w>s", "Divide la ventana horizontalmente") -- divide la ventana horizontalmente
keymap("n", "<leader>se", "<C-w>=", "Divisiones del mismo tamaño") -- hacer las diviciones del mismo ancho y alto
keymap("n", "<leader>sx", "<cmd>close<CR>", "Cierra la divición actual") -- cierra la división actual de la ventana
keymap("n","+",[[<cmd>vertical resize +5<cr>]],"Agranda verticalmente la ventana")
keymap("n","*",[[<cmd>vertical resize -5<cr>]],"Achica verticalmente la ventana")
keymap("n","-",[[<cmd>horizontal resize +2<cr>]],"Agranda horizontalmente la ventana")
keymap("n","_",[[<cmd>horizontal resize -2<cr>]],"Achica horizontalmente la ventana")
keymap("n", "<C-l>", "<C-w><C-l>", "Moverce a la división derecha")
keymap("n", "<C-k>", "<C-w><C-k>", "Moverse a la división de arriba")
keymap("n", "<C-j>", "<C-w><C-j>", "Moverce a la división de abajo")
keymap("n", "<C-h>", "<C-w><C-h>", "Moverse a la división izquierda")

-- administeación de pestañas
keymap("n", "<leader>to", "<cmd>tabnew<CR>", "Nueva pestaña") -- nueva pestaña
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", "Cierrar pestaña actual") -- cierra la pestaña actual
keymap("n", "<leader>tn", "<cmd>tabn<CR>", "Pestaña siguiente") --  ir a la proxima pestaña
keymap("n", "<leader>tp", "<cmd>tabp<CR>", "Pestaña anterior") --  ir a la pestaña previa
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", "Abre el buffer actual en una nueva pestaña") --  mueve el buffer actual a una nueva pestaña

-- Sangria (indentado)
keymap("v","<","<gv","Deshacer sangria")
keymap("v",">",">gv","Aumenta sangria")

-- Movimiento de texto envuelto
keymap("n", "<A-j>", ":m+1<CR>", "Mueve la línea hacia abajo")
keymap("n", "<A-k>", ":m-2<CR>", "Mueve la línea hacia arriba")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", "Mueve las líneas seleccionadas hacia abajo")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", "Mueve las línea seleccionadas hacia arriba")
