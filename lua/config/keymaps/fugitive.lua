-- ******************************************************
-- *** Atajo de teclado para el cliente Giy fugitive  ***
-- ******************************************************
return {
  keys = {
    {"<leader>gf",":Git fetch --all -p<cr>","Git fetch prune all"},
    {"<leader>gp",":Git pull<cr>","Git pull"},
  }
}
