-- Ensure lazy.nvim is installed and configured
return {
  -- Color schemes
  {
    "folke/tokyonight.nvim",
    "sainnhe/sonokai",
    "sainnhe/gruvbox-material",
    "sainnhe/everforest",
    "sainnhe/edge",
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "white",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      local tokyonight = require("tokyonight")
      tokyonight.setup(opts)
      tokyonight.load()
    end,
  },
}
