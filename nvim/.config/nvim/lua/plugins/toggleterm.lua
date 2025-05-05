return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    -- Add your custom keymaps here
    { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Toggle horizontal terminal" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Toggle vertical terminal" },
    { "<leader>tl", "<cmd>TermSelect<CR>", desc = "Select terminal" },
    { "<leader>tc", "<cmd>lua _CLAUDE_TOGGLE()<CR>", desc = "Claude Toggle" },
    { "<leader>tg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", desc = "Claude Toggle" },

    -- Terminals 2-5 on keys u-p
    { "<leader>tu", "<cmd>2ToggleTerm<CR>", desc = "Toggle terminal 2" },
    { "<leader>ti", "<cmd>3ToggleTerm<CR>", desc = "Toggle terminal 3" },
    { "<leader>to", "<cmd>4ToggleTerm<CR>", desc = "Toggle terminal 4" },
    { "<leader>tp", "<cmd>5ToggleTerm<CR>", desc = "Toggle terminal 5" },
  },
  opts = {
    -- Your configuration options here
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<C-\>]], -- This is the default toggle mapping
    shade_terminals = true,
    direction = "float", -- Set default direction: 'vertical', 'horizontal', or 'float'
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Define special terminals
    local Terminal = require("toggleterm.terminal").Terminal

    -- Lazygit terminal instance
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.9)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.9)
        end,
      },
    })

    -- Define the toggle function globally so it can be called by keybindings
    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    local claude = Terminal:new({
      cmd = "claude",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.9)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.9)
        end,
      },
    })
    function _CLAUDE_TOGGLE()
      claude:toggle()
    end

    -- Additional setup like terminal specific keymaps
    function _G.set_terminal_keymaps()
      local keymap_opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], keymap_opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], keymap_opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], keymap_opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], keymap_opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], keymap_opts)
    end

    -- Auto-command to set terminal keymaps when a terminal is opened
    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "term://*",
      callback = function()
        -- Set buffer-local options to make terminal behave better in normal mode
        local opts = { buffer = 0 }
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        -- You can add terminal-specific normal mode keymaps here if needed
        vim.keymap.set("n", "q", "<cmd>close<CR>", opts)
      end,
    })
  end,
}
