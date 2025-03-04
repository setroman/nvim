-- **********************************************************
-- ***  Atajo de teclas para autocompletado con nvim-cmd  ***
-- **********************************************************


return function (cmp,luasnip)
  return {
    -- Mapeos de teclas
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping({
      i = cmp.mapping.abort(), -- Cancelar autocompletado
      c = cmp.mapping.close(), -- Cerrar el menú de autocompletado
    }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar selección
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item() -- Seleccionar siguiente ítem
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump() -- Expandir o saltar en snippets
      else
        fallback() -- Comportamiento por defecto de <Tab>
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item() -- Seleccionar ítem anterior
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1) -- Saltar al snippet anterior
      else
        fallback() -- Comportamiento por defecto de <S-Tab>
      end
    end, { "i", "s" }),
  }
end


