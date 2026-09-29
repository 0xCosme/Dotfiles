local map = vim.keymap.set

-- Salvar o arquivo
map("n", "<leader>w", "<cmd>w<CR>", {
  desc = "Salvar arquivo",
})

-- Fechar o Neovim
map("n", "<leader>q", "<cmd>q<CR>", {
  desc = "Sair do Neovim",
})

-- Salvar e fechar o Neovim
map("n", "<leader>x", "<cmd>x<CR>", {
  desc = "Salvar e sair",
})

-- Limpar o destaque depois de uma busca
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
  desc = "Limpar destaque da busca",
})


-- Espaço + e: abrir ou fechar a árvore de arquivos
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
  desc = "Abrir ou fechar menu lateral",
})



map("n", "<leader>p", "<cmd>NvimTreeFocus<CR>", {
  desc = "Focar na árvore de arquivos",
})


-- Ctrl + h/j/k/l: alternar entre as janelas
-- h = esquerda | j = baixo | k = cima | l = direita
map("n", "<C-h>", "<C-w>h", {
  desc = "Ir para a janela à esquerda",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Ir para a janela abaixo",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Ir para a janela acima",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Ir para a janela à direita",
})

-- Espaço + v: dividir a tela na vertical
map("n", "<leader>v", "<cmd>vsplit<CR>", {
  desc = "Abrir janela vertical",
})

-- Espaço + h: dividir a tela na horizontal
map("n", "<leader>h", "<cmd>split<CR>", {
  desc = "Abrir janela horizontal",
})

-- Espaço + c: fechar somente a janela atual
map("n", "<leader>c", "<cmd>close<CR>", {
  desc = "Fechar janela atual",
})

-- Espaço + o: manter somente a janela atual
map("n", "<leader>o", "<cmd>only<CR>", {
  desc = "Manter somente esta janela",
})



-- Destacar texto copiado
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Destacar texto copiado",
  group = vim.api.nvim_create_augroup("highlight-yank", {
    clear = true,
  }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
