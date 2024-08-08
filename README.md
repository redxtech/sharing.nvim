# sharing.nvim

a neovim plugin to quickly toggle features that make it easier for an observer to understand what you are doing.

## installation

install using your favorite package manager:

### lazy.nvim
```lua
{
  'redxtech/sharing.nvim',
  keys = {
    { 'n', '<leader>ts', ':Sharing toggle<cr>' },
  },
  config = true,
}
```

## usage

usage: `:Sharing <command>`

### commands

- `toggle` (or no command): toggles all features
- `enable`: enables all features
- `disable`: disables all features

## features

- toggles the `show-line-numbers` option
- SOON: enables scrolling animations (requires `neoscroll.nvim`)

## todo

- [ ] find more things to toggle
- [ ] toggle them
- [ ] look into detecting sessions with instant.nvim and toggling on connection
