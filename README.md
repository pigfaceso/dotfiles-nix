# pigfaceso's Home Manager Dotfiles

Nix-based [Home Manager](https://github.com/nix-community/home-manager) configuration for user `wonwow` on `x86_64-linux`.

## Structure

```
.
├── flake.nix              # Flake entry point (nixpkgs, home-manager, nixvim)
├── flake.lock             # Pinned dependencies
├── home.nix               # Top-level home configuration
├── modules/
│   ├── packages.nix       # System packages (fonts, CLI tools, dev tools)
│   ├── cli/               # Shell & CLI tooling
│   │   ├── zsh.nix        # ZSH with completion, syntax highlighting, autosuggestions
│   │   ├── starship.nix   # Minimal prompt (dir + git + char)
│   │   ├── zoxide.nix     # Smarter `cd`
│   │   ├── git.nix        # Git config (delta pager, nvimdiff merge)
│   │   ├── tmux.nix       # Tmux (CPU, resurrect, continuum, vim-navigator)
│   │   └── ollama.nix     # Ollama service
│   ├── desktop/           # Terminal emulators
│   │   ├── alacritty.nix  # Alacritty (Hack Nerd Font, 12pt)
│   │   └── rio.nix        # Rio terminal
│   ├── editors/
│   │   └── neovim/        # NixVim-based Neovim config
│   │       ├── init.nix
│   │       ├── globals.nix / options.nix / keymaps.nix
│   │       ├── autocmds.nix / colorschemes.nix
│   │       ├── lsp.nix / diagnostics.nix / plugins.nix
│   │       └── ...
│   └── development/       # Dev environment stubs
│       ├── node.nix
│       └── python.nix
└── files/
    ├── scripts/
    │   └── tmux-sessionizer  # Fzf-based tmux session switcher
    └── nvim/                  # (available but unused; nixvim handles it)
```

## Usage

```bash
# Build and activate
home-manager switch --flake .#wonwow
```

Designed for non-NixOS Linux via `targets.genericLinux.enable = true`.
