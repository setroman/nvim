-- ******************************************************************
-- *** Atajos personales de teclas para el Explorador de archivos ***
-- ------------------------------------------------------------------
-- <CR>:  Abrir archivo o carpeta
-- l:     Abrir archivo o carpeta (alternativo)
-- h:     Cerrar carpeta
-- <C-e>: Cerrar Neo-tree
-- <leader>e: Toggle Neo-tree
-- ******************************************************************
return function ()

  -- Atajo de teclado para abrir/cerrar Neo-tree
  vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = 'Abre/Cierra Explorador' })

  return {

    ["<CR>"] = "open",  -- Abrir archivo o carpeta
    ["l"] = "open",     -- Abrir archivo o carpeta (alternativo)
    ["h"] = "close_node",  -- Cerrar carpeta
    ["<C-e>"] = "close_window",  -- Cerrar Neo-tree
  }
end

