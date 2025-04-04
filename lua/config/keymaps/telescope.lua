--  ***********************************************
--  *** Configuración de atajos para telescope  ***
--  ***********************************************

local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local nkm = require("core.keymapper").nkm

-- Carga de los atajo de teclado para telescope
-- Atajos básicos
nkm("<leader>ff", "<cmd>Telescope find_files<cr>", "Búsqueda de archivos")
nkm("<leader>fg", "<cmd>Telescope live_grep<cr>", "Búsqueda de contenido de archivos")
nkm("<leader>fb", "<cmd>Telescope buffers<cr>", "Busqueda de bufers")
nkm("<leader>fh", "<cmd>Telescope help_tags<cr>", "Búsqueda en el help")

-- Atajos para Git
-- nkm("<leader>gf", function() builtin.git_files({ show_untracked = true }) end, "Git Files")
-- nkm("<leader>gs", function() builtin.git_status() end, "Git Status")
-- nkm("<leader>gc", function() builtin.git_bcommits() end, "Git Commits")
nkm("<leader>gb", function() builtin.git_branches() end, "Git Branches")

-- Atajo file browse
nkm("<leader>fe",function ()
    telescope.extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
  end,
  "Explorador de archivos"
)

return {

  default = {
    i = {
      ["<C-k>"] = actions.move_selection_previous, -- moverse arriba
      ["<C-j>"] = actions.move_selection_next,     -- moverse abajo
      ["<esc>"] = actions.close,                   -- cerrar telescope
    },
  },
}
