# Apple Terminal Profile

The configuration in this repo was tested in Apple Terminal with:

- Profile: `Pro`
- Font: `JetBrainsMonoNLNFM-Regular`
- Size: `17`

Notes:

- A Nerd Font is required for the prompt separators and icons.
- The prompt theme here uses ANSI `0-255` colors instead of hex truecolor because that renders more reliably in Apple Terminal for segmented background blocks.
- If your current Terminal tab does not refresh after changing shell config, run:

```bash
exec zsh -il
```
