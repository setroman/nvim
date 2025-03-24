local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")


-- Metodo abreviado keymap para setear el mapa de caracteres
local function nkeymap(lhs, rhs, desc) -- método para abreviar
  vim.keymap.set("n", lhs, rhs, { desc = desc })
end

-- Carga de los atajo de teclado para telescope
-- Atajos básicos
nkeymap("<leader>ff", "<cmd>Telescope find_files<cr>", "Búsqueda de archivos")
nkeymap("<leader>fg", "<cmd>Telescope live_grep<cr>", "Búsqueda de contenido de archivos")
nkeymap("<leader>fb", "<cmd>Telescope buffers<cr>", "Busqueda de bufers")
nkeymap("<leader>fh", "<cmd>Telescope help_tags<cr>", "Búsqueda en el help")

-- Atajos para Git
-- nkeymap("<leader>gf", function() builtin.git_files({ show_untracked = true }) end, "Git Files")
-- nkeymap("<leader>gs", function() builtin.git_status() end, "Git Status")
-- nkeymap("<leader>gc", function() builtin.git_bcommits() end, "Git Commits")
nkeymap("<leader>gb", function() builtin.git_branches() end, "Git Branches")

-- Atajo file browse
nkeymap("<leader>fe",function ()
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
