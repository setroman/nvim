<p style="text-align:right;"> Versión: 0.1.0 <p>

# nvim :metal:

    Mi configuración personal para el editor nvim

## Caracteristicas principales

- Gestor de paquetes [Lazy](https://github.com/folke/lazy.nvim)
- Tema de colores [kanagawa](https://github.com/rebelot/kanagawa.nvim)
- [Fugitive](https://github.com/tpope/vim-fugitive) como interface del cliente git. Y [gitsings](https://github.com/lewis6991/gitsigns.nvim) para colorear los cambios en los proyectos.
- Parcer de código [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Mason](https://github.com/williamboman/mason.nvim) para la gestión de los paquetes LSP, Linter, fotmater, DPS.
- [Lspconfig](https://github.com/neovim/nvim-lspconfig) para configuración de los LSP...
- Autocompletado con [cmp](https://github.com/hrsh7th/nvim-cmp) 
- Previsuavilización de archivos markdown con [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) para enbellecer la línea de estado
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) para el explorador de archivos

### Dependencias incluidas

- [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) para el manejo y navegación de objetos
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) para el manejo automático de etiquetas html
- [neodev](https://github.com/folke/neodev.nvim) para la confuguración automática de Lua lsp
- [mason-lsconfig](https://github.com/williamboman/mason-lspconfig.nvim) facilita el uso de mason y lspconfig juntos
- [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) autocompletado en el buffer actual
- [cmp-path](https://github.com/hrsh7th/cmp-path) autocompletado para rutas de archivos
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) autocompletado en LSP
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua) autocompletado para Lua (útil el la confuguración)
- [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) autocompletado para línea de comanfo
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) autocompletado con intagración de snippets
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) motor de snippets
- [lspkind](https://github.com/onsails/lspkind.nvim) iconos para el menú del autocompletado
- [nvim-ts-autopairs](https://github.com/windwp/nvim-autopairs) catácteres pares acutoáticos
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) iconos web
- [plenary](https://github.com/nvim-lua/plenary.nvim) para no repetir las funciones lua
- [nui](https://github.com/MunifTanjim/nui,nvim) biblioteca de interface de usuario para Neovim

## [Configuración básica](/lua/config/settings.lua)

- Numeración relativa.
- Indentado de 2 espacios de ancho con autoindentado en la línea nueva.
- *espacio* (" ") como tecla principal (***leader***).
- *wrap* desactivado.
- Las busquedas ignoran las mayusculas de las minusculas por defecto, pero si en la busqueda se incluyen ambas, no se ignora la diferencia.
- Resalta la línea donde se encuentra el cursor.
- *termguicolors* habilitado. Con *background* en *dark* y columna de simbolos.
- División de pantala hacia la derecha o hacia abajo.
- *swapfie* desacticado.

## [Atajo básico de teclas](/lua/config/keymaps/shortcut.lua)

### (I) - Modo Inserción

| *atajo* | *función* |
|:---:|:---|
|***j + k***                |   salir del modo inserción |
|***Ctrl + j***             |   moverse hacia abajo |
|***Ctrl + k***             |   moverse hacia arriba |
|***Ctrl + h***             |   moverse hacia la izquierda |
|***Ctrl + l***             |   moverse hacia la derecha |

### (N) - Modo Normal

| *atajo* | *función* |
|:---:|:---|
|***Alt + k***              |   mueve la fila actual hacia arriba|
|***Alt + j***              |   mueve la fila actual hacia abajo|
|***leader + n + h***       |   límpia la expresión de busqueda |
|***leader + s + v***       |   división vertical |
|***leader + s + h***       |   división horizontal |
|***leader + s + e***       |   iguala el tamaño de las divisiones |
|***leader + s + x***       |   cierar división |
|***Ctrl + l***             |   moverse a la división derecha |
|***Ctrl + k***             |   moverse a la división de arriba |
|***Ctrl + j***             |   moverse a la división de abajo |
|***Ctrl + h***             |   moverse a la división izquierda|
|***leader + t + o***       |   nueva pestaña |
|***leader + t + x***       |   cerrar pestaña|
|***leader + t + n***       |   pestaña siguiente |
|***leader + t + p***       |   pestaña anterior |
|***leader + t + f***       |   Abre el buffer en una pestaña |
|***leader + e ***          |   Abre/Cierra el explorador de archivos |
