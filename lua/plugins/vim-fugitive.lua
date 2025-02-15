-- ********************************
-- *** Interface de cliente Git ***
-- ********************************

-- Juego de teclas
mapping = require("config.keymaps.fugitive")

-- Extension fugitive para esar el cliente git 
return {
	"tpope/vim-fugitive",
	cmd = {"G","Git"},
	keys = mapping.keys
}
