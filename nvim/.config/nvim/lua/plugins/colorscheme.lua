return {
  -- Try catppuccin with better readability
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "latte", -- or "frappe", "macchiato", "mocha"
      dim_inactive = {
        enabled = false, -- Don't dim inactive windows
      },
    },
  },

  -- Set it as default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
