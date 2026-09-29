return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>t",
        "<cmd>ToggleTerm<CR>",
        desc = "Abrir ou fechar terminal",
      },
    },
    opts = {
      size = 15,
      open_mapping = nil,
      direction = "horizontal",
      shade_terminals = true,
      persist_size = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  },
}
