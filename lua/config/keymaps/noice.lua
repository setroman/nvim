-- ************************************************
-- *** Atajos de teclas para la extensión Noice ***
-- ************************************************
local nkm = require("core.keymaper").nkm
local noice = require("noice")

-- Creación de atajos
nkm("<leader>nl", function() noice.cmd("last") end, "Noice: Mostrar el último mensaje")
nkm("<leader>ne", function() noice.cmd("errors") end, "Noice: Lista todos los errores recientes")
-- nkm("<leader>Nh", function() noice.cmd("history") end, "Noice: Mostrar historial")
-- nkm("<leader>Na", function() noice.cmd("all") end, "Noice: Mostrar todos los mensajes")
-- nkm("<leader>Nd", function() noice.cmd("dismiss") end, "Noice: Cerrar todos los mensajes")
nkm("<leader>fn", function() noice.cmd("telescope") end, "Noice: Muestra los mensajes en telescope")
