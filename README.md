# Starship Config File

Lightweight shareable setup for:

- `starship` prompt
- `lsd` file listing colors
- `zsh` shell snippets
- Apple Terminal font/profile notes

This repo contains the exact configuration extracted from a working local setup, but only the relevant pieces. It does not include unrelated shell settings or secrets.

## Preview

Style goals:

- segmented prompt blocks
- white text on colored backgrounds
- Apple Terminal friendly ANSI colors
- runtime block that shows `node`, `python`, `rust`, `go`, `php`, or `java` depending on the current project
- `lsd` colors for permission bits like `r`, `w`, `x`, file metadata, and git status

## Files

- `configs/starship.toml`: active Starship theme
- `configs/lsd/config.yaml`: `lsd` behavior
- `configs/lsd/colors.yaml`: `lsd` semantic colors
- `shell/zsh-snippet.zsh`: aliases and shell init snippet
- `shell/zprofile-snippet.zsh`: UTF-8 locale snippet
- `docs/terminal-profile.md`: Apple Terminal profile used during setup
- `docs/process.md`: short write-up of the tuning process and the final decisions
- `scripts/install.sh`: copy configs into `~/.config` and print the shell lines to add

## Requirements

- macOS
- `zsh`
- Homebrew
- `starship`
- `lsd`
- a Nerd Font

## Install

```bash
./scripts/install.sh
```

Then add the shell snippets shown by the installer into your `~/.zshrc` and `~/.zprofile`, or source the files manually.

## Manual Install

```bash
mkdir -p ~/.config/lsd
cp configs/starship.toml ~/.config/starship.toml
cp configs/lsd/config.yaml ~/.config/lsd/config.yaml
cp configs/lsd/colors.yaml ~/.config/lsd/colors.yaml
```

Add this to `~/.zshrc`:

```zsh
source /path/to/repo/shell/zsh-snippet.zsh
```

Add this to `~/.zprofile`:

```zsh
source /path/to/repo/shell/zprofile-snippet.zsh
```

Reload:

```bash
exec zsh -il
```

## Font

The shared setup was tuned with:

- Terminal profile: `Pro`
- Font: `JetBrainsMonoNLNFM-Regular`
- Size: `17`

See `docs/terminal-profile.md` for the exact notes.
