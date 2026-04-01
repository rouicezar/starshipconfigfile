# What Was Changed

This repo captures a lightweight version of the final working setup.

## Prompt

`starship` was tuned to a segmented prompt with:

- white text
- colored background blocks
- project-aware runtime version block
- time block
- simple second-line arrow prompt

For Apple Terminal compatibility, the theme uses ANSI `0-255` colors instead of hex truecolor values.

## Shell

Only the minimal shell glue is included:

- `ls`, `ll`, `la`, `lt` aliases for `lsd`
- `starship init zsh`
- window title update hook
- UTF-8 locale snippet

## File Listing

`lsd` was added to provide semantic colors for:

- permission bits
- user and group
- file size and date age
- git status markers

This is what enables more expressive coloring for `r`, `w`, `x`, and related metadata.
