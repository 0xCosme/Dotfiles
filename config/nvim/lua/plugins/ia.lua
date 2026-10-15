return {
  -- 1) Sugestão de código enquanto você digita (modelo pequeno e rápido)
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("minuet").setup({
        provider = "openai_fim_compatible",
        n_completions = 1,
        context_window = 512,
        provider_options = {
          openai_fim_compatible = {
            api_key = "TERM",
            name = "Ollama",
            end_point = "http://localhost:11434/v1/completions",
            model = "qwen2.5-coder:3b",
            optional = { max_tokens = 56, top_p = 0.9 },
          },
        },
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            accept = "<A-y>",
            accept_line = "<A-l>",
            next = "<A-]>",
            prev = "<A-[>",
            dismiss = "<A-e>",
          },
        },
      })
    end,
  },

  -- 2) Chat e edição de código com o Ollama
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        http = {
          ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
              schema = {
                model = { default = "qwen3-8b-16k" },
              },
            })
          end,
        },
      },
      strategies = {
        chat = { adapter = "ollama" },
        inline = { adapter = "ollama" },
      },
    },
    keys = {
      { "<leader>a", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "IA: chat" },
      { "<leader>A", "<cmd>CodeCompanionActions<cr>",     mode = { "n", "v" }, desc = "IA: ações" },
      { "ga",        "<cmd>CodeCompanionChat Add<cr>",    mode = "v",          desc = "IA: enviar seleção ao chat" },
    },
  },
}
