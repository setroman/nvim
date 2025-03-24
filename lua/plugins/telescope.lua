
-- local mappings = require("config.keymaps.telescope")


return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "BurntSushi/ripgrep",
    "nvim-telescope/telescope-file-browser.nvim",
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
    }
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local mappings = require("config.keymaps.telescope")

    telescope.setup({
      defaults = {
        mappings = mappings.default,
        file_ignore_patterns = {
          "node_modules",".git","__pycache__" -- Ignorar estas carpetas
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,  -- Activado por defecto coincidecias difusas
          override_generic_sotrer = true, -- Anula el clasificador genérico
          override_file_sorter = true,    -- Anula el clasificador de archivos
          case_mode = "smart_case",       -- smart_case, ignore_case or respect_case
        },
      },
    })

    -- Cargar extensiones
    telescope.load_extension("fzf")

  end,
}
