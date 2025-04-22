--  ======================================================================
--  CARGADOR PRINCIPAL DE MIS CONFIGURACIONES
--  ======================================================================

--
-- Cargo las opciones principales
--
for k, v in pairs(require("custom.options")) do vim.opt[k] = v end

--
-- Configuraciones de keclado
--
require("core.keymapper").load(require("custom.keybind"))

--
-- Gestor de paqueres
--
require("config.lazy")

