-- **************************************
-- ***  MIS COMBINACIONES DE TECLAS   ***
-- **************************************

-- Setea el espacio como tecla principal <leader> = ' '
vim.g.mapleader = " "

return {
  { "","<SPACE>","Nop" },

  --===========================================================================
  -- MODO INSERT
  -----------------------------------------------------------------------------
  --- Escape del modo
  { "i","jk","<Esc>","Sale del modo insert"},

  --- Movimientos
  { "i", "<C-j>", "<Down>", "Mueve el cursor hacia abajo"},
  { "i", "<C-k>", "<Up>", "Mueve el cursor hacia arriba"},
  { "i", "<C-h>", "<Left>", "Mueve el cursor a la izquierda"},
  { "i", "<C-l>", "<Right>", "Mueve el cursor a la derecha"}, 

  --===========================================================================
  -- MODO NORMAL
  -----------------------------------------------------------------------------
  --- Ventanas
  { "n", "<leader>wv", "<C-w>v", "Divide la ventana verticalmente" },
  { "n", "<leader>ws", "<C-w>s", "Divide la ventana horizontalmente" },
  { "n", "<leader>we", "<C-w>=", "Divisiones del mismo tamaño"},
  { "n", "<leader>wn", "<C-w>n", "Nueva ventana vacia"},
  { "n", "<leader>wc", "<C-w>c", "Cierra la divición actual"},
  -- { "n", "+",[[<cmd>vertical resize +5<cr>]],"Agranda verticalmente la ventana"},
  -- { "n", "*",[[<cmd>vertical resize -5<cr>]],"Achica verticalmente la ventana"},
  -- { "n", "-",[[<cmd>horizontal resize +2<cr>]],"Agranda horizontalmente la ventana"},
  -- { "n", "_",[[<cmd>horizontal resize -2<cr>]],"Achica horizontalmente la ventana"},
  { "n", "<C-l>", "<C-w><C-l>", "Moverse a la división derecha"},
  { "n", "<C-k>", "<C-w><C-k>", "Moverse a la división de arriba"},
  { "n", "<C-j>", "<C-w><C-j>", "Moverce a la división de abajo"},
  { "n", "<C-h>", "<C-w><C-h>", "Moverse a la división izquierda"},
  --- Ventanas terminal
  { "n", "<leader>tv","<cmd>vs<CR><cmd>terminal<CR>","Ventana vertical de terminal" },
  { "n", "<leader>th","<cmd>sp<CR><cmd>terminal<CR>", "Ventana horizontal de terminal" },
  --- Pestañas
  { "n", "<leader>to", "<cmd>tabnew<CR>", "Nueva pestaña" }, -- nueva pestaña
  { "n", "<leader>tx", "<cmd>tabclose<CR>", "Cerrar pestaña actual" }, -- cierra la pestaña actual
  { "n", "<leader>tn", "<cmd>tabn<CR>", "Pestaña siguiente" }, --  ir a la proxima pestaña
  { "n", "<leader>tp", "<cmd>tabp<CR>", "Pestaña anterior" }, --  ir a la pestaña previa
  { "n", "<leader>tf", "<cmd>tabnew %<CR>", "Abre el buffer actual en una nueva pestaña" }, --  mueve el buffer actual a una nueva pestaña
  --- Movimiento de texto
  { "n", "<A-j>", ":m+1<CR>", "Mueve la línea hacia abajo" },
  { "n", "<A-k>", ":m-2<CR>", "Mueve la línea hacia arriba" },

  --===========================================================================
  -- MODO VISUAL
  -----------------------------------------------------------------------------
  --- Movimiento de texto
  { "v", "<A-j>", ":m '>+1<CR>gv=gv", "Mueve las líneas seleccionadas hacia abajo" },
  { "v", "<A-k>", ":m '<-2<CR>gv=gv", "Mueve las línea seleccionadas hacia arriba" },
  --- Sangria, indentación
  { "v", "<","<gv","Deshacer sangria" },
  { "v", ">",">gv","Aumenta sangria" },
  --===========================================================================
  -- MODO TERMINAL
  -----------------------------------------------------------------------------
  --- Escape del modo terminal
  { "t", "<Esc><Esc>", "<C-\\><C-n>", "Vuelve al modo normal" },
}
