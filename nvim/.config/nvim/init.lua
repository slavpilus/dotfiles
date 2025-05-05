-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("toggleterm").setup({
  open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
})

-- Set conceal level to your preferred value (0 for no concealing)
vim.opt.conceallevel = 0
