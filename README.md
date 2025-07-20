# Neovim Configuration

This is a modern, modular Neovim configuration designed for productivity, code navigation, and beautiful visuals. It leverages the latest plugin ecosystem, with a focus on web development, Lua, and general programming.

## Features
- **Plugin management** with [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP support** for multiple languages (CSS, HTML, Lua, TypeScript, PHP, SQL, Vue, TailwindCSS)
- **Autocompletion** and **snippets**
- **File explorer** (Neo-tree)
- **Fuzzy finder** (Telescope)
- **Syntax highlighting** (Treesitter)
- **Statusline** (Lualine)
- **Dashboard** (Alpha-nvim)
- **Formatter and linter integration** (none-ls)
- **Beautiful theme** (Catppuccin)
- Sensible defaults and custom keybindings

---

## Installation

### Prerequisites
- [Neovim](https://neovim.io/) 0.8+
- [git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for some LSPs/formatters)
- [npm](https://www.npmjs.com/) (for some LSPs/formatters)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live_grep)

### Setup
1. **Clone this config** into your Neovim config directory:
   ```sh
   git clone <this-repo-url> ~/.config/nvim
   ```
2. **Start Neovim**:
   ```sh
   nvim
   ```
   The first launch will automatically install [lazy.nvim](https://github.com/folke/lazy.nvim) and all plugins.
3. **(Optional) Install LSP servers/formatters**:
   Use `:Mason` to open the Mason UI and install additional language servers or tools as needed.

---

## Plugin List & Purpose

- **[lazy.nvim]**: Fast, modern plugin manager
- **[catppuccin]**: Beautiful theme (Macchiato variant)
- **[nvim-treesitter]**: Syntax highlighting and code parsing for many languages
- **[nvim-lspconfig]**: LSP client configuration
- **[mason.nvim]** & **[mason-lspconfig.nvim]**: LSP/DAP/server installer and integration
- **[nvim-cmp]**: Autocompletion engine
- **[LuaSnip]** & **[friendly-snippets]**: Snippet engine and community snippets
- **[neo-tree.nvim]**: File explorer
- **[telescope.nvim]** & **[telescope-ui-select.nvim]**: Fuzzy finder and UI select
- **[lualine.nvim]**: Statusline
- **[alpha-nvim]**: Dashboard
- **[none-ls.nvim]**: Formatter/linter integration (null-ls fork)

---

## Key Settings

- **Leader key**: `<Space>`
- **Indentation**: 2 spaces, expand tabs
- **Line numbers**: Absolute and relative
- **Cursorline**: Enabled
- **True color**: Enabled

---

## Keybindings

| Keybinding         | Mode | Action/Description                  |
|--------------------|------|-------------------------------------|
| `<leader>trb`      | n    | Open terminal below                 |
| `<leader>trs`      | n    | Resize terminal                     |
| `<leader>src`      | n    | Source (reload) config              |
| `<C-n>`            | n    | Toggle Neo-tree file explorer       |
| `<C-p>`            | n    | Telescope: Find files               |
| `<leader>fg`       | n    | Telescope: Live grep                |
| `K`                | n    | LSP: Hover documentation            |
| `gd`               | n    | LSP: Go to definition               |
| `<leader>gr`       | n    | LSP: Find references                |
| `<leader>ca`       | n/v  | LSP: Code action                    |
| `<leader>gf`       | n    | Format buffer (via none-ls/LSP)     |

---

## Usage Tips
- **LSP**: Language servers are managed via Mason. Run `:Mason` to install more.
- **Format on demand**: Use `<leader>gf` to format the current buffer.
- **Snippets**: Use Tab/Shift-Tab to expand and jump through snippets (in insert mode).
- **Dashboard**: Alpha-nvim provides a start screen on launch.
- **Theme**: Catppuccin Macchiato is set by default. Change in `lua/plugins/catppuccin.lua`.

---

## Extending & Customizing
- Add plugins in `lua/plugins/`
- Change settings in `lua/vim-options.lua`
- Keymaps can be added in the same file or in plugin configs
- For more LSPs, add to the `ensure_installed` list in `lua/plugins/lsp-config.lua`

---

## Troubleshooting
- If plugins do not install, check your internet connection and restart Neovim.
- For LSP/formatter issues, check `:Mason` and ensure the required tools are installed.
- For more help, consult the documentation of each plugin (see links above).

---

## Credits
- All credit goes to [typecraft](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)
