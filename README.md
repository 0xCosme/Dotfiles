# Hyprland Config

Configuração personalizada para **Hyprland** (Wayland compositor) com foco em ser sem foco.

<details>
  <summary>Detalhes</summary>



# Programas padrão configurados

* Terminal: `kitty`
* Gerenciador de arquivos: `thunar`// temporario to indeciso 
* Menu / launcher: `rofi -show drun -show-icons`
* Navegador: `firefox`

---

# Keybindings principais

| Atalho               | Função                                           |
| -------------------- | ------------------------------------------------ |
| Super + Return       | Abrir terminal                                   |
| Super + F            | Abrir navegador                                  |
| Super + E            | Abrir gerenciador de arquivos                    |
| Super + Space        | Abrir menu (rofi)                                |
| Super + C            | Fechar janela ativa                              |
| Super + M            | Sair do Hyprland                                 |
| Super + V            | Alternar janela flutuante                        |
| Super + P            | Alternar pseudo layout                           |
| Super + J / L        | Alternar split / mover janelas                   |
| Super + H            | Histórico clipboard via rofi                     |
| Super + Q/A/S        | Screenshot (região/janela/monitor)               |
| Super + esc          | Reinicia Waybar                                  |
| Super + setas        | Mover foco da janela                             |
| Super + 1..0         | Trocar workspace                                 |
| Super + Shift + 1..0 | Mover janela ativa para workspace correspondente |


---

# Monitores

tem um exemplo acho q essa explicacao da desatualizadA desde a migracao pra .lua
Exemplo de configuração multi-monitor:

```text
monitor = eDP-1,1920x1080@60,0x0,1.0
monitor = HDMI-A-1,1920x1080@75,1920x0,1.0
```


---



</details>

---


# Waybar


![](img/waybarw.png)

<details>
<summary>Detalhes</summary>

---


### Fontes e Ícones
Para que os ícones (Arch, Bateria, CPU) apareçam corretamente, é necessário instalar uma **Nerd Font**. O comando acima já inclui a `ttf-firacode-nerd `, que é a recomendada para esta configuração.

---

## Instalação


Coloque os arquivos `config` e `style.css` dentro da pasta:

```bash
~/.config/waybar/config
~/.config/waybar/style.css
```

Para aplicar as mudanças, reinicie a Waybar:

```bash
pkill waybar && waybar &
```

</details>



---


# Neovim

Configuração simples de **Neovim** feita para estudo e uso diário com node.js/go e c/c++.


![](img/neovim.png)

<details>
  <summary>Detalhes</summary>


---

# Atalhos principais

| Atalho | Ação |
| --- | --- |
| `<Space>w` | Salvar arquivo |
| `<Space>q` | Sair do Neovim |
| `<Space>x` | Salvar e sair |
| `<Esc>` | Limpar destaque da busca |
| `<Space>e` | Abrir ou fechar o menu lateral |
| `<Space>t` | Abrir ou fechar o terminal |


# Menu lateral

Dentro do menu lateral:

| Tecla | Ação |
| --- | --- |
| `Enter` | Abrir arquivo ou entrar em pasta |
| `a` | Criar arquivo ou pasta |
| `d` | Excluir arquivo ou pasta |
| `r` | Renomear arquivo ou pasta |
| `v` | Abrir em janela vertical |
| `s` | Abrir em janela horizontal |
| `q` | Fechar o menu |


## Abrir janelas

| Atalho | Ação |
| --- | --- |
| `<Space>v` | Dividir verticalmente |
| `<Space>h` | Dividir horizontalmente |

## Fechar janelas

| Atalho | Ação |
| --- | --- |
| `<Space>c` | Fechar somente a janela atual |
| `<Space>o` | Manter somente a janela atual |


# Terminal integrado

| Atalho | Ação |
| --- | --- |
| `<Space>t` | Abrir ou fechar o terminal |
| `<C-\\>` | Alternar entre terminal e editor |
| `<C-\\><C-n>` | Sair do modo de digitação do terminal |
| `i` | Voltar a digitar no terminal |



# Arquivos abertos

| Atalho | Ação |
| --- | --- |
| `<S-h>` | Arquivo anterior |
| `<S-l>` | Próximo arquivo |
| `<Space>bp` | Escolher um arquivo aberto |
| `<Space>bc` | Escolher e fechar um arquivo |
| `<Shift>+C` | Fechar o arquivo atual |

# Busca com Telescope

| Atalho | Ação |
| --- | --- |
| `<Space>ff` | Buscar arquivos |
| `<Space>fg` | Buscar texto no projeto |
| `<Space>fb` | Buscar buffers |
| `<Space>fh` | Buscar ajuda |

# LSP

| Atalho | Ação |
| --- | --- |
| `gd` | Ir para a definição |
| `gD` | Ir para a declaração |
| `gr` | Mostrar referências |
| `K` | Mostrar documentação |
| `<Space>rn` | Renomear símbolo |
| `<Space>ca` | Ação de código |
| `<Space>f` | Formatar arquivo |

# Autocomplete

| Atalho | Ação |
| --- | --- |
| `<C-Space>` | Abrir sugestões |
| `<CR>` | Confirmar sugestão |
| `<Tab>` | Próxima sugestão |
| `<S-Tab>` | Sugestão anterior |

---



</details>

---



