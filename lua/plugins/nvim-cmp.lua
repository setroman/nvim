-- ******************************************************
-- ***  Extersión para el manejo del autocompletado   ***
-- ******************************************************
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",       -- Autocompletado basado en el buffer actual
      "hrsh7th/cmp-path",         -- Autocompletado para rutas de archivos
      "hrsh7th/cmp-nvim-lsp",     -- Autocompletado basado en LSP
      "hrsh7th/cmp-nvim-lua",     -- Autocompletado para Lua (útil en configuraciones de Neovim)
      "hrsh7th/cmp-cmdline",      -- Autocompletado para la línea de comandos
      "saadparwaiz1/cmp_luasnip", -- Integración con snippets (requiere luasnip)
      "L3MON4D3/LuaSnip",         -- Motor de snippets
      "onsails/lspkind.nvim",     -- Íconos para el menú de autocompletado (opcional)
      "windwp/nvim-autopairs",    -- Carácteres pares automaticos. asegura de cerrar la llave
    },
    event = "VeryLazy",        -- Cargar el plugin al entrar en modo inserción
    main = "config.cmp",
    config = true,
  },
}
