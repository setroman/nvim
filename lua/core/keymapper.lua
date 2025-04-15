--  *************************************************
--  *** Funciones para setear mápas de caracteres ***
--  *************************************************
local M = {}

--- Carga las combinaciones de teclas pasados por parámetro.
---@param keybind table
M.load = function(keybind)
  for _, kb in pairs(keybind) do
    M.set(kb[1],kb[2],kb[3],kb[4],kb[5])
  end
end


local keymap_opts = {
  -- Evita que la asignación de teclas vuelva a expandirse si apunta a otra asignación.
  noremap = true, -- true: se desactiva la expansión recursiva. false: (por defecto), la asignación puede expandirse a otra asignación.
  -- Evita que el comando asignado muestre salida en la línea de estado.
  silent = true,  -- true: el comando se ejecuta sin mostrar mensajes. false: (por defecto) algunos comandos pueden imprimir salida.
}

--- Crea atajos de teclados
---   permite implementar iconos con which-key. En estos casos usar en los modos los caracteres ('v' | 'x' | 'i' | 'n' | 't' | 's' | '') individualmente.
---@param mode string | string[]
---@param kb string
---@param cmd function | string
---@param desc? string
---@param icon? string
M.set = function(mode, kb, cmd, desc, icon)
  -- Si no contiene icon no configura which-key
  if icon ~= nil then
    -- Si importar which-key falla, configura keymap.ser.
    if not pcall(function()
          require('which-key').add {
            {
              kb,
              cmd,
              mode = mode,
              desc = desc,
              icon = icon,
              noremap = keymap_opts.noremap,
              silent = keymap_opts.silent,
            },
          }
        end) then
      M.set(mode, kb, cmd, desc)
    end
  else
    local opts = keymap_opts
    if desc ~= nil then opts.desc = desc end
    vim.keymap.set(mode, kb, cmd, opts)
  end
end


return M
