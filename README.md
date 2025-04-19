# My Neovim Configuration

A modular Neovim configuration built on top of kickstart.nvim, organized for easy maintenance and customization.

## Features

- Modular plugin management with lazy.nvim
- Language Server Protocol (LSP) support
- Advanced code completion
- File navigation with telescope and neo-tree
- Git integration
- Syntax highlighting with treesitter
- And more...

## Structure

```
.
├── lua/
│   ├── lazy-plugins.lua    # Plugin configurations
│   ├── keymaps.lua         # Key mappings
│   ├── options.lua         # Neovim options
│   ├── kickstart/          # Core plugin configurations
│   └── custom/             # Custom configurations
└── init.lua                # Main entry point
```

## Installation

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone https://github.com/antoniguss/nvim-config.git ~/.config/nvim
```

3. Start Neovim and let lazy.nvim install the plugins:
```bash
nvim
```

## Customization

- Add new plugins in `lua/lazy-plugins.lua`
- Configure plugin settings in `lua/kickstart/plugins/`
- Add custom configurations in `lua/custom/`
- Modify keymaps in `lua/keymaps.lua`

## License

MIT License - See [LICENSE.md](LICENSE.md) for details

