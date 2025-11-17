return {
  "folke/persistence.nvim",
  keys = {
    { "<leader>qs", "<cmd>mksession! .session.vim<CR>", desc = "Save manual session" },
    { "<leader>ql", "<cmd>source .session.vim<CR>", desc = "Load manual session" },
    {
      "<leader>qd",
      function()
        require("persistence").stop()
      end,
      desc = "Don't save session",
    },
  },
}
