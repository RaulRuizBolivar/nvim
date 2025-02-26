return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        width = 120, -- Ancho del buffer centrado
        options = {
          number = true, -- Ocultar número de líneas (opcional)
          relativenumber = false,
        },
      },
    })
  end,
}
