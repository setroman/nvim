-- **************************************************************************
-- *** Extensión para gestionar los mensajes y mejorar la experiencia...  ***
-- **************************************************************************
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim", -- Biblioteca de componentes de IU para Neovim.
    "rcarriga/nvim-notify", -- Un gestor de notificaciones elegante, configurable para NeoVim
  },
  config = function ()
    require("noice").setup({
      lsp = {
        override = {
          -- Usa Noice para los mensajes de LSP en hover/signature help
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        signature = {
          enabled = false,  -- Desactiva la firma LSP (usa lspsaga.nvim o otro plugin)
        },
        hover = {
          enabled = true,
          silent = true,   -- No muestra "No information available"
          view = "hover",  -- Usa la ventana flotante de Noice
          border = {
            style = "rounded", -- estilo redondeado
          },
        },
        diagnostics = {
          enabled = true,
          -- Opciones avanzadas para diagnostics en línea
          virtual_text = {
            format = function(diagnostic)
              return string.format(
                "%s (%s: %s)",
                diagnostic.message,
                diagnostic.source,
                diagnostic.code
              )
            end,
          },
        },
      },
      routes = {
        -- Oculta mensajes redundantes
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
        -- Muestra diagnostics como notificaciones flotantes
        {
          view = "notify",
          filter = { event = "lsp", kind = "diagnostic" },
        },
      },
      presets = {
        bottom_search = true, -- Muestra la búsqueda en la parte inferior como en classic vim
        command_palette = true, -- Hace que los comandos sean más amigables visualmente
        long_message_to_split = true, -- Divide los mensajes largos en una ventana dividida
        inc_rename = false, -- Usa `inc-rename.nvim` si lo tienes instalado
        lsp_doc_border = true, -- Agrega bordes a los documentos flotantes de LSP
      },
      messages = {
        view = "mini", -- Usa una vista más minimalista para los mensajes
        view_error = "notify", -- Errores se muestran como notificaciones
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      notify = {
        enabled = true, -- Usa Noice para los mensajes de notificación
      },
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- Mejora la experiencia del modo de comando
        format = {
          cmdline = { icon = "" },
          search_down = { icon = " " },
          search_up = { icon = " " },
          filter = { icon = "$" },
          lua = { icon = "" },
          help = { icon = "" },
        },
      },
      views = {
        cmdline_popup = {
          position = { row = 5, col = "50%" },
          size = { width = 60, height = "auto" },
        },
        popupmenu = {
          relative = "editor",
          position = { row = 8, col = "50%" },
          size = { width = 60, height = 10 },
        },
      },
    })
    -- Establezco los atajos de taclas para noice
    require("config.keymaps.noice")
  end
}

