return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp", -- Use this branch for the new version
  cmd = "VenvSelect",
  enabled = function()
    return LazyVim.has("telescope.nvim")
  end,
  opts = {
    settings = {
      options = {
        notify_user_on_venv_activation = true,
        venv_dir = { ".venv", "venv", "/opt/anaconda3/" },
        venv_bin = { "python", "python3" },
        venv_activate = { "activate", "activate.bat" },
        venv_deactivate = { "deactivate", "deactivate.bat" },
        venv_prompt = "🐍",
        venv_prompt_color = "green",
        venv_prompt_bold = true,
      },
    },
  },
  --  Call config for python files and load the cached venv automatically
  ft = "python",
  keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
