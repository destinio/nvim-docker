https://neovim.io/

# Neovim Docker with node and php

- [:help](https://neovim.io/doc/user/index.html)
- [motions](https://neovim.io/doc/user/motion.html)

## Install

### Requirements
-- docker

```bash
# run to build the container
make up
```

## Usage

```bash
# run to start the container
make start

# run to execute bash in the container
make run

make tutor # to start the tutor in nvim
make help # to start help in nvim
```

```bash
# Command in nvim

# In nvim hit : to enter command mode and run Tutor
# Let the learning begin :)
:Tutor

# Or, run :help to get help and learn much, much, more
:help
```

- `make run` - to start the container in `/root` directory using bash. 

- Run `nvim .` to edit home directory files.

- Starter file have been moved to root user directory at `/root`
```bash
. # /root/ on container
├── .config
│   └── nvim
│       ├── init.lua # main configuration file
│       └── lua
│           ├── basic.lua # basic configurations
│           └── kickstart.lua # kickstart plugin (see below])
└── code
    ├── index.js
    └── index.php
```

- `.config` - houses the configuration files for Neovim
- `code` - houses smaple code file to play with code files

## Resources

### Books
https://pragprog.com/titles/dnvim2/practical-vim-second-edition/

### Videos
- [Primeagen](https://www.youtube.com/watch?v=X6AR2RMB5tE)
- [Kickstart - kickstart.lua](https://www.youtube.com/watch?v=m8C0Cq9Uv9o)

### Games
- [Vim Adventures](https://vim-adventures.com/)

### Others
- (https://github.com/chengwei920412/awesome-neovim-vim)
- (https://github.com/rockerBOO/awesome-neovim)

## Kickstart
**Kickstart** is a plugin that helps you to start with Neovim. It is a collection of plugins and configurations that will help you to start with Neovim.
**Warning**: This may not work out of the box, you may need to install some dependencies in the container.

- [Repo](https://github.com/nvim-lua/kickstart.nvim)
- [Kickstart - Video](https://www.youtube.com/watch?v=m8C0Cq9Uv9o)
