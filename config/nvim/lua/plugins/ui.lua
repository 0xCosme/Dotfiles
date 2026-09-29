return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "tokyonight",
        component_separators = "",
        section_separators = "",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Buscar arquivos" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Buscar texto" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buscar buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Buscar ajuda" },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = { prompt_position = "top" },
      },
    },
  },
}
