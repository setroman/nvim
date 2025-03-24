-- **************************************************************
-- *** Complemento para tener un lindo explorador de archivos ***
-- **************************************************************

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",  -- Usa la versión estable v3.x
    dependencies = {
      "nvim-lua/plenary.nvim",  -- Dependencia requerida
      "nvim-tree/nvim-web-devicons",  -- Iconos para archivos
      "MunifTanjim/nui.nvim",  -- Dependencia requerida
    },
    config = function()
      -- Configuración de neo-tree (ver más abajo)
      require("neo-tree").setup({
        close_if_last_window = true,  -- Cerrar Neo-tree si es la última ventana abierta
        enable_git_status = true,  -- Mostrar estado de Git
        enable_diagnostics = true,  -- Mostrar diagnósticos (errores, advertencias, etc.)
        default_component_configs = {
          icon = {
            folder_closed = "",  -- Icono para carpetas cerradas
            folder_open = "",    -- Icono para carpetas abiertas
            folder_empty = "",   -- Icono para carpetas vacías
            folder_empty_open = "", -- Icono para carpeta vacías abiertas
            default = "",        -- Icono por defecto para archivos
          },
          git_status = {
            symbols = {
              added = "",  -- Icono para archivos añadidos
              modified = "",  -- Icono para archivos modificados
              deleted = "",  -- Icono para archivos eliminados
              renamed = "➜",  -- Icono para archivos renombrados
              untracked = "",  -- Icono para archivos no rastreados
              ignored = "",  -- Icono para archivos ignorados
              unstaged = "",  -- Icono para archivos no preparados
              staged = "",  -- Icono para archivos preparados
              conflict = "",  -- Icono para archivos en conflicto
            },
          },
        },
        window = {
          position = "left",  -- Posición del explorador (left, right, float)
          width = 30,  -- Ancho del explorador
          mappings = {
            ["<CR>"] = "open",  -- Abrir archivo o carpeta
            ["l"] = "open",     -- Abrir archivo o carpeta (alternativo)
            ["h"] = "close_node",  -- Cerrar carpeta
            ["<C-e>"] = "close_window",  -- Cerrar Neo-tree
          },
        },
        filesystem = {
          filtered_items = {
            visible = true,  -- Mostrar archivos ocultos
            hide_dotfiles = false,  -- Mostrar archivos que comienzan con "."
            hide_gitignored = false,  -- Mostrar archivos ignorados por Git
          },
          follow_current_file = {
            enabled = true,  -- Seguir el archivo actual en el explorador
          },
        },
      })
      -- Atajo de teclado para abrir/cerrar Neo-tree
      vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
    end,
}
