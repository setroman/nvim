--  *************************************************
--  *** Funciones para setear mápas de caracteres ***
--  *************************************************
local M = {}

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
M.km = function(mode, kb, cmd, desc, icon)
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
      M.km(mode, kb, cmd, desc)
    end
  else
    local opts = keymap_opts
    if desc ~= nil then opts.desc = desc end
    vim.keymap.set(mode, kb, cmd, opts)
  end
end

--- Crea atajos en el modo visual
---@param kb string
---@param cmd function | string
---@param desc? string
---@param icon? string
M.vkm = function(kb, cmd, desc, icon) M.km('v', kb, cmd, desc, icon) end

--- Crea atajos en el modo insersión
---@param kb string
---@param cmd function | string
---@param desc? string
---@param icon? string
M.ikm = function(kb, cmd, desc, icon) M.km('i', kb, cmd, desc, icon) end

--- Crea atajos en el modo normal
---@param kb string
---@param cmd function | string
---@param desc? string
---@param icon? string
M.nkm = function(kb, cmd, desc, icon) M.km('n', kb, cmd, desc, icon) end

--- Crea atajos para el modo terminal
---@param kb string
---@param cmd function | string
---@param desc? string
---@param icon? string
M.tkm = function(kb, cmd, desc, icon) M.km('t', kb, cmd, desc, icon) end

return M
