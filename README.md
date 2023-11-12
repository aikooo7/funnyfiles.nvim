# What is this plugin?

This plugin is a way of creating/deleting files/folders without needing to open a file explorer.

[![Preview](https://asciinema.org/a/sT2K9pqvwKLKP35o3NB01IR3I.svg)](https://asciinema.org/a/sT2K9pqvwKLKP35o3NB01IR3I)

# How to get started 

Using [vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'aikooo7/funnyfiles.nvim'
```

Using [dein](https://github.com/Shougo/dein.vim)

```viml
call dein#add('aikooo7/funnyfiles.nvim')
```
Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'aikooo7/funnyfiles.nvim', 
}
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
-- init.lua:
    {
    'aikooo7/funnyfiles.nvim',
    }

-- plugins/funnyfiles.lua:
return {
    'aikooo7/funnyfiles.nvim'
    }
```

Then run `:help funnyfiles`
