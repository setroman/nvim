-- ************************************************************
-- ***  Extensión  de previsualización de archivos markdown ***
-- ************************************************************

return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
}

--[[ ## Errata
  - Si no funciona, intentar sincronizar :Lazy sync
  - Luego si sigue sin funcionar ver los mensages de error que esta teniendo :messages
  - Intentar instalando con :mkdp#util#install()
  - Si nada funciona, eliminar el data e intentar nurvamente... :V
]]
