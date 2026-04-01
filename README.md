# Starship Config File / Starship 终端配置

Lightweight shareable setup for:

- `starship` prompt
- `lsd` file listing colors
- `zsh` shell snippets
- Apple Terminal font/profile notes

这是一个轻量、可分享的终端配置项目，主要包含：

- `starship` 提示符主题
- `lsd` 文件列表配色
- `zsh` 初始化片段
- Apple Terminal 字体与 profile 说明

This repo contains the exact configuration extracted from a working local setup, but only the relevant pieces. It does not include unrelated shell settings or secrets.

这个仓库整理自一套已经验证可用的本地终端环境，但只保留了真正相关的配置，不包含无关 shell 设置或任何敏感信息。

## Preview / 预览

Style goals:

- segmented prompt blocks
- white text on colored backgrounds
- Apple Terminal friendly ANSI colors
- runtime block that shows `node`, `python`, `rust`, `go`, `php`, or `java` depending on the current project
- `lsd` colors for permission bits like `r`, `w`, `x`, file metadata, and git status

设计目标：

- 分段式 prompt
- 白色文字 + 彩色背景块
- 兼容 Apple Terminal 的 ANSI 配色
- 根据当前项目自动显示 `node`、`python`、`rust`、`go`、`php` 或 `java` 版本
- 使用 `lsd` 对权限位 `r`、`w`、`x`、文件元数据与 git 状态进行语义着色

## Files / 文件结构

- `configs/starship.toml`: active Starship theme
- `configs/lsd/config.yaml`: `lsd` behavior
- `configs/lsd/colors.yaml`: `lsd` semantic colors
- `shell/zsh-snippet.zsh`: aliases and shell init snippet
- `shell/zprofile-snippet.zsh`: UTF-8 locale snippet
- `docs/terminal-profile.md`: Apple Terminal profile used during setup
- `docs/process.md`: short write-up of the tuning process and the final decisions
- `scripts/install.sh`: copy configs into `~/.config` and print the shell lines to add

文件说明：

- `configs/starship.toml`：当前使用的 Starship 主题
- `configs/lsd/config.yaml`：`lsd` 默认行为配置
- `configs/lsd/colors.yaml`：`lsd` 语义配色配置
- `shell/zsh-snippet.zsh`：`zsh` alias 与初始化片段
- `shell/zprofile-snippet.zsh`：UTF-8 语言环境片段
- `docs/terminal-profile.md`：Apple Terminal profile 说明
- `docs/process.md`：本次终端调优过程与最终决策记录
- `scripts/install.sh`：将配置复制到 `~/.config` 的安装脚本

## Requirements / 依赖

- macOS
- `zsh`
- Homebrew
- `starship`
- `lsd`
- a Nerd Font

需要：

- macOS
- `zsh`
- Homebrew
- `starship`
- `lsd`
- 一款 Nerd Font 字体

## Install / 安装

```bash
./scripts/install.sh
```

Then add the shell snippets shown by the installer into your `~/.zshrc` and `~/.zprofile`, or source the files manually.

然后把安装脚本输出的 shell 片段加入你的 `~/.zshrc` 和 `~/.zprofile`，或者手动 `source` 对应文件。

## Manual Install / 手动安装

```bash
mkdir -p ~/.config/lsd
cp configs/starship.toml ~/.config/starship.toml
cp configs/lsd/config.yaml ~/.config/lsd/config.yaml
cp configs/lsd/colors.yaml ~/.config/lsd/colors.yaml
```

Add this to `~/.zshrc`:

在 `~/.zshrc` 中加入：

```zsh
source /path/to/repo/shell/zsh-snippet.zsh
```

Add this to `~/.zprofile`:

在 `~/.zprofile` 中加入：

```zsh
source /path/to/repo/shell/zprofile-snippet.zsh
```

Reload:

重新加载：

```bash
exec zsh -il
```

## Font / 字体

The shared setup was tuned with:

- Terminal profile: `Pro`
- Font: `JetBrainsMonoNLNFM-Regular`
- Size: `17`

这套配置调试时使用的是：

- Terminal profile：`Pro`
- 字体：`JetBrainsMonoNLNFM-Regular`
- 字号：`17`

See `docs/terminal-profile.md` for the exact notes.

更详细的终端 profile 说明见 `docs/terminal-profile.md`。
