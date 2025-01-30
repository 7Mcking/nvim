-- Ensure lazy.nvim is installed and configured
return {
  -- Color schemes
  {
    { "sainnhe/sonokai", lazy = false },
    { "sainnhe/gruvbox-material", lazy = false },
    { "sainnhe/everforest", lazy = false },
    {
      "sainnhe/edge",
      lazy = false,
      opts = {
        bg = "default",
        transparent_background = true,
        styles = {
          comments = "italic",
          sidebars = "transparent",
          floats = "transparent",
        },
      },
      config = function(_, opts)
        require("edgy").setup(opts)
        vim.cmd.colorscheme("edge")
      end,
    },
    {
      "oxfist/night-owl.nvim",
      lazy = false,
    },
    {
      "catppuccin/nvim",
      lazy = false,
      opts = {
        style = "frappe",
        transparent_background = true,
        opacity = 0.5,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      },
      config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
      end,
    },

    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        style = "night",
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      },
      config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd.colorscheme("tokyonight")
      end,
    },
  },
}
