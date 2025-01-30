return {
  "dragfire/leetup.nvim",
  dependencise = { "m00qek/baleia.nvim" },
  opts = {},
  config = function(_, opts)
    require("leetup").setup(opts)
  end,
}
