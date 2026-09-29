# Configuração minimalista do Neovim

Esta configuração é modular e usa Lua. Ela foi preparada para Node.js/TypeScript, Go, C++, HTML, CSS, JSON e Markdown.

## Instalação no Arch Linux

```bash
sudo pacman -S --needed neovim git ripgrep fd base-devel go nodejs npm clang
```

Depois, copie esta pasta para `~/.config/nvim` ou mantenha os arquivos já criados nesse caminho e execute:

```bash
nvim
```

O `lazy.nvim` será instalado automaticamente. O `mason.nvim` instalará os servidores LSP configurados. Para formatadores externos, instale os executáveis correspondentes:

```bash
npm install -g prettier
sudo pacman -S --needed clang go
```

No Neovim, execute `:Mason` para conferir os servidores. Se algum servidor não tiver sido instalado automaticamente, selecione-o nessa tela.

## Estrutura

| Arquivo | Responsabilidade |
| --- | --- |
| `init.lua` | Ponto de entrada |
| `lua/config/options.lua` | Opções gerais |
| `lua/config/keymaps.lua` | Atalhos globais |
| `lua/config/lazy.lua` | Bootstrap do gerenciador de plugins |
| `lua/plugins/ui.lua` | Tema, statusline e Telescope |
| `lua/plugins/treesitter.lua` | Syntax highlighting e indentação |
| `lua/plugins/lsp.lua` | LSP e atalhos de navegação |
| `lua/plugins/completion.lua` | Autocomplete e snippets |
| `lua/plugins/formatting.lua` | Formatação ao salvar |

## Atalhos principais

| Atalho | Ação |
| --- | --- |
| `<Space>ff` | Buscar arquivos |
| `<Space>fg` | Buscar texto no projeto |
| `<Space>fb` | Buscar buffers |
| `gd` | Ir para definição |
| `gr` | Ver referências |
| `K` | Mostrar documentação sob o cursor |
| `<Space>rn` | Renomear símbolo |
| `<Space>ca` | Ação de código |
| `<Space>f` | Formatar buffer |
| `<Space>w` | Salvar |
| `<Space>e` | Abrir explorador de arquivos |
| `Ctrl+h/j/k/l` | Mover entre janelas |

O primeiro caractere dos atalhos com `<Space>` é a tecla de espaço, configurada como líder.
