return {
  {
    "stevearc/aerial.nvim",
    event = "VeryLazy", -- Match LazyVim's loading event
    opts = {
      layout = {
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 20,
        win_opts = {},
        default_direction = "prefer_left",
        placement = "window",
      },
      attach_mode = "window",
      backends = { "lsp", "treesitter", "markdown", "man" },
      show_guides = true,
      guides = {
        mid_item = "├╴",
        last_item = "└╴",
        nested_top = "│ ",
        whitespace = "  ",
      },
    },
  },
}
