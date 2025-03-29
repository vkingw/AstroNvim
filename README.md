# AstroNvim Template

**NOTE:** This is for AstroNvim v5+

<p align="center">
    <a href="https://github.com/AstroNvim/AstroNvim/pulse"><img src="https://img.shields.io/github/last-commit/AstroNvim/AstroNvim?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"></a>
    <a href="https://github.com/AstroNvim/AstroNvim/releases/latest"><img src="https://img.shields.io/github/v/release/AstroNvim/AstroNvim?style=for-the-badge&logo=gitbook&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41"></a>
    <a href="https://github.com/AstroNvim/AstroNvim/stargazers"><img src="https://img.shields.io/github/stars/AstroNvim/AstroNvim?style=for-the-badge&logo=apachespark&color=eed49f&logoColor=D9E0EE&labelColor=302D41"></a>
     <img src="https://img.shields.io/endpoint?url=https://waka.mehalter.com/api/compat/shields/v1/mehalter/interval:any/label:AstroNvim&style=for-the-badge&label=wakatime&logo=wakatime&color=a6da95&logoColor=D9E0EE&labelColor=302D41">
    <br>
    <a href="https://www.twitter.com/AstroNvim"><img src="https://img.shields.io/badge/@AstroNvim-e05d44?style=for-the-badge&logo=twitter&color=fab387&logoColor=D9E0EE&labelColor=302D41"></a>
    <a href="https://hachyderm.io/@AstroNvim"><img src="https://img.shields.io/badge/@AstroNvim-e05d44?domain=https%3A%2F%2Fhachyderm.io&style=for-the-badge&logo=mastodon&color=eebebe&logoColor=D9E0EE&labelColor=302D41"></a>
    <a href="https://www.reddit.com/r/AstroNvim/"><img src="https://img.shields.io/badge/%2Fr%2FAstroNvim-e05d44?style=for-the-badge&logo=reddit&color=ee99a0&logoColor=D9E0EE&labelColor=302D41"></a>
    <br>
    <a href=https://discord.astronvim.com><img src="https://img.shields.io/discord/939594913560031363?style=for-the-badge&logo=discord&color=cba6f7&logoColor=D9E0EE&labelColor=302D41"></a>
</p>

<p align="center">
AstroNvim is an aesthetically pleasing and feature-rich neovim config that is extensible and easy to use with a great set of plugins
</p>

## 🌟 Preview

![Preview Image](https://astronvim.com/themes/overview.png)

## ✨ Features

- Common plugin specifications with [AstroCommunity](https://github.com/AstroNvim/astrocommunity)
- File explorer with [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Autocompletion with [Blink.cmp](https://github.com/Saghen/blink.cmp)
- Git integration with [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Statusline, Winbar, and Bufferline, Statuscolumn with [Heirline](https://github.com/rebelot/heirline.nvim)
- Terminal with [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
- Fuzzy finding with [Snacks Picker](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md)
- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Formatting and Linting with [None-ls](https://github.com/nvimtools/none-ls.nvim)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)
- Debug Adapter Protocol with [nvim-dap](https://github.com/mfussenegger/nvim-dap)

## ⚡ Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (_Optional with manual intervention:_ See [Documentation on customizing icons](https://docs.astronvim.com/Recipes/icons)) <sup>[[1]](#1)</sup>
- [Neovim 0.10+ (_Not_ including nightly)](https://github.com/neovim/neovim/releases/tag/stable)
- [Tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md) (_Note:_ This is only necessary if you want to use `auto_install` feature with Treesitter)
- A clipboard tool is necessary for the integration with the system clipboard (see [`:help clipboard-tool`](https://neovim.io/doc/user/provider.html#clipboard-tool) for supported solutions)
- Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using) <sup>[[2]](#2)</sup>
- Optional Requirements:
  - [ripgrep](https://github.com/BurntSushi/ripgrep) - live grep picker search (`<leader>fw`)
  - [lazygit](https://github.com/jesseduffield/lazygit) - git ui toggle terminal (`<leader>tl` or `<leader>gg`)
  - [go DiskUsage()](https://github.com/dundee/gdu) - disk usage toggle terminal (`<leader>tu`)
  - [bottom](https://github.com/ClementTsang/bottom) - process viewer toggle terminal (`<leader>tt`)
  - [Python](https://www.python.org/) - python repl toggle terminal (`<leader>tp`)
  - [Node](https://nodejs.org/en/) - node repl toggle terminal (`<leader>tn`)

> [!NOTE] > <sup id="1">[1]</sup> All downloadable Nerd Fonts contain icons which are used by AstroNvim. Install the Nerd Font of your choice to your system and in your terminal emulator settings, set its font face to that Nerd Font. If you are using AstroNvim on a remote system via SSH, you do not need to install the font on the remote system.

> [!NOTE] > <sup id="2">[2]</sup> Note when using default theme: For MacOS, the default terminal does not have true color support. You will need to use [iTerm2](https://iterm2.com/), [Kitty](https://sw.kovidgoyal.net/kitty/), [WezTerm](https://wezterm.org), or another [terminal emulator](https://github.com/termstandard/colors?tab=readme-ov-file#truecolor-support-in-output-devices) that has true color support.

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
