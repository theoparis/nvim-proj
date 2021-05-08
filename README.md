# nvim-proj

Neovim project-based config plugin made in lua.

## Installation

### with packer.nvim

```lua
use "creepinson/nvim-proj"
```

## Usage

To make it auto load the project-based config, put the following in any file of your neovim lua config:

```lua
vim.api.nvim_command("autocmd BufEnter * :lua require('proj').LoadConfig()")
```

Now this plugin will attempt to load a `.nvim/init.lua` in your project if it exists. 
This currently only works for projects that have git initialized.

## TODO

- Add non-git project support

