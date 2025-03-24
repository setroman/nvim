-- **************************************
-- ***  Atajos de teclado de los LSP  ***
-- **************************************

local lsp = vim.lsp

return {
  -- Atajos globales
  default = function()

    local function keymap(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {desc = desc})
    end
    -- Ver`:help vim.diagnostic.*` para obtener documentación sobre cualquiera de las siguientes funciones
    keymap('n', '<leader>D', vim.diagnostic.open_float, 'Muastra el diagnóstico')
    keymap('n', '[d', vim.diagnostic.goto_prev, 'Diagnóstico previo')
    keymap('n', ']d', vim.diagnostic.goto_prev, 'Diagnóstico siguiente')
    keymap('n', '<space>q', vim.diagnostic.setloclist)
  end,

  -- Atajos locales de bugger
  on_attach = function(_, bufnr)
    -- Habilita la finalización activada por <c-x><c-o>
    vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
    local function keymap(mode, lhs, rhs, desc)
      -- Buffer local mappings.
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
    end

    -- Diagnósticos
    -- keymap("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Mostrar diagnóstico de búfer") -- mostrar diagnóstico de búfer
    -- keymap("n", "<leader>d", vim.diagnostic.open_float, "Mostrar diagnóstico por linea") -- mostrar diagnóstico por linea
    -- keymap("n", "[d", vim.diagnostic.goto_prev, "Ir a anterior diagnóstico en el búfer") -- ir a anterior diagnóstico en el búfer
    -- keymap("n", "]d", vim.diagnostic.goto_next, "Ir al próximo diagnóstico en el búfer") -- ir al próximo diagnóstico en el búfer

    -- Establece la combinación de teclas
    keymap("n", "gR", "<cmd>Telescope lsp_references<CR>", "Mostrar referencia LSP")                   -- mostrar la definicipon, referencia
    keymap("n", "gD", lsp.buf.declaration, "Ir a la decraración")                                      -- ir a la declaración
    keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", "Mostrar definición de LSP")               -- mostrar definición LSP
    -- keymap("n", "gI", "<cmd>Telescope lsp_implementations<CR>", "Mostrar implenentación de LSP")       -- mostrar implementación LSP
    -- keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "Mostrar definición de tipos de LSP") -- mostrar la definición de tipos de LSP
    keymap({ "n", "v" }, "<leader>ca", lsp.buf.code_action, "Ver acciones de código disponibles")      -- ver acciones de código disponibles, en modo visual se aplicara a la selección
    keymap("n", "<leader>rn", lsp.buf.rename, "Renombrado inteligente")                                -- renombrado inteligente
    keymap("n", "K", lsp.buf.hover, "Muestra documentación de lo que esta bajo el cursor")             -- muestra documentación de lo que esta bajo el cursor
    keymap('n', '<C-K>', lsp.buf.signature_help, "Muestra ayuda de lo que esta bajo el cursor")
    keymap('n', '<space>wa', lsp.buf.add_workspace_folder, "Agrega espacio de trabajo")                -- agrega espacio de trajo
    keymap('n', '<space>wr', lsp.buf.remove_workspace_folder, "Remueve espacio de trabajo")            -- remueve espacio de trabajo
    keymap("n", "<leader>rs", ":LspRestart<CR>", "Reinicia LSP si es necesario")                       -- reinicia LSP si es necesario
    keymap('n', '<space>wl', function()
      print(vim.inspect(lsp.buf.list_workspace_folders()))
    end, "Lista los espacios de trabajo") -- lista los espacios de trabajo
    keymap('n', '<space>f', function()
      lsp.buf.format { async = true }
    end, "Formatea el búfer") -- formatea el búfer actual
  end
}
