# Dotfiles Repository

Welcome to my personal Dotfiles repository! This project is a curated collection of my configuration files and settings, designed to streamline the process of setting up my preferred development environment across various machines and virtual machines (VMs). These configurations are open for anyone looking to establish a set of default settings for their development tools. Feel free to explore, use, and adapt these configurations to fit your needs.

## Overview

This repository contains configurations for various tools, with a focus on Neovim, an extensible text editor built for efficiency. Other tools that I use are Yabai, Skhd and Sketchybar.

Over time, my Neovim setup has evolved, moving from a pre-configured setup with NvChad to a custom configuration crafted from scratch. Below, you'll find details about both the old and current configurations, along with instructions on how to deploy them.

## Neovim with NvChad (Previous Configuration)
My initial setup was based on Neovim with the NvChad framework. NvChad offers a robust, pre-configured setup that enhances Neovim's functionality, making it a powerful editor for development. However, after a hiatus from Neovim, I returned to find significant changes in NvChad that rendered my configuration incompatible. This made me understand that I cannot shape myself into a tool that another person has created, and therefore I challenged myself to start a fresh configuration from scratch, allowing me to delve deeper into the mechanics of Neovim and its plugins.

To install the NvChad version 2.0 (the last compatible version with my old config), use the following command:
```
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

## Custom Neovim Configuration from scratch (Current Setup)
In pursuit of a setup that resonates more closely with my personal workflow, I crafted a new Neovim configuration from the ground up. This custom configuration is not only tailored to my current preferences but also provides a deeper understanding of the inner workings of a code editor and the importance of each setting and plugin.

### File Structure

The current Neovim configuration is organized as follows, offering a clear and modular approach to managing settings and plugins:
```
.
├── init.lua
├── lazy-lock.json
└── lua
    ├── base
    │   ├── init.lua
    │   ├── mappings.lua
    │   └── plugins
    │       ├── init.lua
    │       └── lazy.lua
    └── configs
        ├── completions.lua
        ├── lazy.lua
        ├── lspconfig.lua
        ├── mason.lua
        ├── nvimtree.lua
        ├── others.lua
        ├── scope.lua
        └── telescope.lua
```

This structure facilitates easy navigation and modification, allowing for a more intuitive and efficient development experience.

To this day, I still change some settings on my configuration to make it more intuitive for me.
