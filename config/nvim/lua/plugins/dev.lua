return {
  {
    dir = "~/dev/tomata.nvim",
    config = function()
      require("tomata").setup({
        duration = 1,
      })
    end,
  },
}
