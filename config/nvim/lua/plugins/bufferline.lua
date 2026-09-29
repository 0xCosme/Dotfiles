return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "slant",
      },
    },
    keys = {
      {
        "<S-h>",
        "<cmd>BufferLineCyclePrev<CR>",
        desc = "Arquivo anterior",
      },
      {
        "<S-l>",
        "<cmd>BufferLineCycleNext<CR>",
        desc = "Próximo arquivo",
      },
      {
        "<leader>bp",
        "<cmd>BufferLinePick<CR>",
        desc = "Escolher arquivo aberto",
      },
      {
        "<leader>bc",
        "<cmd>BufferLinePickClose<CR>",
        desc = "Escolher e fechar arquivo",
      },
      {
        -- Shift+C fecha o arquivo atual.
        "<S-c>", 
        "<cmd>bdelete<CR>",
        desc = "Fechar arquivo atual" ,

      },
    },
  },
}
