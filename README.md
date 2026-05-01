# dev-env

Build dev environment from scratch

To launch from scratch, run the following command:

```bash
./run
```

You can also filter, for an specific file inside of runs directory, for example:

```bash
./run 02-neovim
```

## WIP in progress

Nothing currently in progress.

## Run scripts

| Script | Description |
|---|---|
| `01-first-steps` | Base packages (curl, git, tmux, fzf, ripgrep, zoxide...) + git aliases |
| `02-neovim` | Compile Neovim from source + luarocks |
| `03-lazygit` | Install lazygit from GitHub releases |
| `04-utils` | Install bat, btop, tldr, rust, atuin, lsd, dust + CascadiaCode Nerd font |
| `05-nvm` | Install NVM |
| `06-node` | Install latest Node.js via NVM |
| `07-ghostty` | Install Ghostty terminal |
| `08-intellij` | Install IntelliJ Community Edition (snap or tarball) |
| `09-windsurf` | Install Windsurf + extensions |
| `10-wallpapers` | GNOME wallpaper rotation via systemd user service (5min interval) |
| `11-opencode` | Install opencode CLI |
| `98-dotfiles` | Stow configs + install LazyVIM from fork |
| `99-zsh` | Install zsh, oh-my-zsh, powerlevel10k, plugins + link dotfiles |

## Wallpapers

Wallpapers in `env/wallpapers/` rotate automatically via `env/wallpapers/rotate.sh` as a systemd user service. Interval: 300s (configurable).

To start/stop manually:

```bash
systemctl --user start wallpaper-rotate.service
systemctl --user stop wallpaper-rotate.service
```

### Info about Archivo partition

Add this line to /etc/fstab to automount Archivo partition:

```bash
UUID=4870-BE1C /media/pracker/Archivo exfat defaults,uid=1000,gid=1000,umask=0000,nofail 0 0
```

### Notes about console Turbo (Windsurf)

- Insert log message: ctrl + alt + l
- Update line number: ctrl + alt + u
- Comment all logs: alt + shift + c
- Uncomment all logs: alt + shift + u
- Delete all logs: alt + shift + d

## License

MIT
