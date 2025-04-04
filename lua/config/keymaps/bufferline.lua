--  *****************************************
--  *** Atajos de teclado para Bufferline ***
--  *****************************************
local nkm = require("core.keymapper").nkm

-- Creacion de atajos
nkm(">", "<Cmd>BufferLineCycleNext<CR>", "Siguiente buffer")
nkm("<", "<Cmd>BufferLineCyclePrev<CR>", "Buffer anterior")
nkm("<leader>bp", "<Cmd>BufferLinePick<CR>", "Seleccionar buffer")
nkm("<leader>bd", "<Cmd>bdelete!<CR>", "Cerrar buffer actial")
nkm("<leader>bc", "<Cmd>BufferLinePickClose<CR>", "Cerrar buffer seleccionado")
nkm("<leader>bl", "<Cmd>BufferLineMoveNext<CR>", "Mover buffer a la derecha")
nkm("<leader>bh", "<Cmd>BufferLineMovePrev<CR>", "Mover buffer a la izquierda")
