# pigfaceso's Home Manager Dotfiles

Nix-based [Home Manager](https://github.com/nix-community/home-manager) configuration for user `wonwow` on `x86_64-linux`. Works on both NixOS and non-NixOS Linux.

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
│   │   └── direnv.nix     # Direnv shell integration
│   ├── desktop/           # Desktop applications
│   │   ├── ghostty.nix    # Ghostty terminal
│   │   ├── zed.nix        # Zed editor
│   │   ├── ...
│   ├── editors/
│   │   └── neovim/        # NixVim-based Neovim config
│   │       ├── init.nix
│   │       ├── globals.nix / options.nix / keymaps.nix
│   │       ├── autocmds.nix / colorschemes.nix
│   │       ├── lsp.nix / diagnostics.nix / plugins.nix
│   │       └── ...
│   ├── services/          # Background services
│   │   ├── ollama.nix     # Ollama LLM service
│   │   └── blanket.nix    # Ambient noise service
│   └── development/       # Language toolchains
│       ├── node.nix       # Node.js / npm / yarn
│       ├── python.nix     # Python
│       ├── go.nix         # Go toolchain
│       ├── rust.nix       # Rust (rustup)
│       └── ruby.nix       # Ruby
└── files/
    ├── scripts/
    │   ├── tmux-sessionizer          # Fzf-based tmux session switcher
    │   └── gnome-personal-setup.sh   # GNOME personalization script
    └── nvim/                          # (available but unused; nixvim handles it)
```

## Usage

### On NixOS

```bash
# Rebuild your NixOS system (home-manager is typically a NixOS module)
sudo nixos-rebuild switch --flake /path/to/this/config
```

### On non-NixOS Linux

```bash
# Build and activate the standalone home-manager configuration
home-manager switch --flake .#wonwow
```

The flake exposes a single `homeConfigurations."wonwow"` output. Non-NixOS support is handled via `targets.genericLinux.enable = true` and `targets.genericLinux.gpu.enable = true`.

## Credits

- [ThePrimeagen/tmux-sessionizer](https://github.com/theprimeagen/tmux-sessionizer) — [`tmux-sessionizer`](files/scripts/tmux-sessionizer), the fzf-based tmux session switcher.
