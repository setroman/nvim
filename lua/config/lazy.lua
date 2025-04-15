--  -------------------------------------------------
--  |  Configuración del gestor de paquetes Lazy    |
--  -------------------------------------------------

-- Obtirne el path del directorio de datos de nvim y le concatena "/lazy/lazy.nvim"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Si el path en 'lazypath' no existe lo crea y carga el proyecto Lazy
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Agrega la ruta 'lazypath' con prioridad en la lista de rutas que maneja neovim. 
vim.opt.rtp:prepend(lazypath)

-- Carga el gestot de paquetes Lazy 
require("lazy").setup({
  { "tpope/vim-fugitive", cmd = { "G", "Git" }},
  { "lewis6991/gitsigns.nvim", 
    opts = { 
      signcolumn = false,
      numhl = true,
      max_file_length = 10000 
    } 
  },
})


