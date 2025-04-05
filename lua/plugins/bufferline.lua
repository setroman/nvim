--  ***********************************************
--  *** Extensión para administrar los buffers  ***
--  ***********************************************
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- 'tabs' para pestañas clásicas
        -- numbers = 'ordinal', -- Número en los buffers
        separator_style = "slant", -- Estilo del separador: slant, thickn thin
        show_close_icon = false,
        color_icons = true,
        indicator = { style = "icon", icon = "▎" }, -- Indicador de buffer activo
        -- buffer_close_icon = "", -- Ícono de cerrar buffer
        modified_icon = "●", -- Ícono de buffer modificado
        close_icon = "",
        left_trunc_marker = "", -- Indicador de más buffers a la izquierda
        right_trunc_marker = "", -- Indicador de más buffers a la derecha
        diagnostics = "nvim_lsp", -- Mostrar errores de LSP en los buffers
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        offsets = {
          {
            -- ajuste para NvimTree
            filetype = "NvimTree",
            text = "Explorador",
            highlight = "Directory",
            separator = true
          }
        }
      },

    })
    -- Atajo de teclas
    require("config.keymaps.bufferline")
  end
}
