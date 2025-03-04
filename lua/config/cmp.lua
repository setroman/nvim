-- **********************************
-- ***  Configuración de nvim-cmp *** 
-- **********************************

local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local mapping = require("config.keymaps.cmd")

return {
  setup = function ()
    -- instacia autopairs
    require("nvim-autopairs").setup({})

    -- Configuración de nvim-cmp
    cmp.setup({
      snippet = {
        expand = function (args)
          luasnip.lsp_expand(args.body)
        end,
      },
      -- atajos de teclado
      mapping = mapping(cmp,luasnip),
      -- Fuentes de autocompletado
      sources = cmp.config.sources({
        { name = "nvim_lsp" },    -- Autocompletado basado en LSP
        { name = "luasnip" },     -- Snippets
        { name = "buffer" },      -- Autocompletado basado en el buffer
        { name = "path" },        -- Autocompletado para rutas de archivos
        { name = "nvim_lua" },    -- Autocompletado para Lua (útil en configuraciones de Neovim)
        -- { name = "codeium" },    -- Autocompletado para Lua (útil en configuraciones de Neovim)
      }),
      -- Formato, iconos,...
      formatting = {
        fields = { "kind", "abbr", "menu" }, -- "kind": El tipo de sugerencia (función, variable, clase, etc.)
                                            -- "abbr": La abreviatura o texto de la sugerencia.
                                            -- "menu": Información adicional, como la fuente de la sugerencia (LSP, buffer, etc.).
        expandable_indicator = true, -- Indicador de que el ítem es expandible
        -- Formato del menú de autocompletado
        format = lspkind.cmp_format({
          mode = "symbol_text", -- Mostrar íconos y texto
          maxwidth = 50,        -- Ancho máximo del menú
          ellipsis_char = "...",-- Carácter para texto truncado
          expandable_indicator = true, -- Indicador de que el ítem es expandible
        }),
      },
      experimental = {
        ghost_text = true, -- Mostrar texto fantasma para la sugerencia seleccionada
      },
    })

    -- Configuración de cmp-cmdline para autocompletado en la línea de comandos
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(), -- Mapeos predeterminados para la línea de comandos
      sources = cmp.config.sources({
        { name = "cmdline" }, -- Autocompletado para comandos de Neovim
      }),
    })

      --
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(), -- Mapeos predeterminados para la línea de comandos
      sources = cmp.config.sources({
        { name = "buffer" }, -- Autocompletado basado en el buffer actual
      }),
    })

    -- enlaza el enevto confirm de cmp con la accion de autopairs...
    cmp.event:on("confirm_done",cmp_autopairs.on_confirm_done())

  end
}

