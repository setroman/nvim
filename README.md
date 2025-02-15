<p style="text-align:right;"> Versión: 0.1.0 <p>

# nvim :metal:

    Mi configuración personal para el editor nvim

## Caracteristicas principales

- Gestor de paquetes [Lazy](https://github.com/folke/lazy.nvim)
- Tema de colores [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
- [Fugitive](https://github.com/tpope/vim-fugitive) como interface del cliente git

## [Configuración básica](/lua/config/settings.lua)

- Numeración relativa.
- Indentado de 2 espacios de ancho con autoindentado en la línea nueva.
- *espacio* (" ") como tecla principal (***leader***).
- *wrap* desactivado.
- Las busquedas ignoran las mayusculas de las minusculas por defecto, pero si en la busqueda se incluyen ambas, no se ignora la diferencia.
- Resalta la línea conde se encuentra el cursor.
- *termguicolors* habilitado. Con *background* en *dark* y columna de simbolos.
- División de pantala hacia la derecha o hacia abajo.
- *swapfie* desacticado.

## [Atajo básico de teclas](/lua/config/keymaps/shortcut.lua)

### (I) - Modo Inserción

| *atajo* | *función* |
|:---:|:---|
|***j + k***               |   salir del modo inserción |
|***Ctrl + j***            |   moverse hacia abajo |
|***Ctrl + k***            |   moverse hacia arriba |
|***Ctrl + h***            |   moverse hacia la izquierda |
|***Ctrl + l***            |   moverse hacia la derecha |

### (N) - Modo Normal

| *atajo* | *función* |
|:---:|:---|
|***leader + n + h***      |   límpia la expresión de busqueda |
|***leader + s + v***      |   división vertical |
|***leader + s + h***      |   división horizontal |
|***leader + s + e***      |   iguala el tamaño de las divisiones |
|***leader + s + x***      |   cierar división |
|***Ctrl + l***            |   moverse a la división derecha |
|***Ctrl + k***            |   moverse a la división de arriba |
|***Ctrl + j***            |   moverse a la división de abajo |
|***Ctrl + h***            |   moverse a la división izquierda|
|***leader + t + o***      |   nueva pestaña |
|***leader + t + x***      |   cerrar pestaña|
|***leader + t + n***      |   pestaña siguiente |
|***leader + t + p***      |   pestaña anterior |
|***leader + t + f***      |   Abre el buffer en una pestaña |


