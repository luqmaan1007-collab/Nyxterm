# Nyxterm

**Nyxterm** is a single-file terminal shell for Android/Linux that supports dynamic command installation from mirrors.  
It allows users to type commands like `nyx install wget` and immediately have them ready to use without manual setup.

## Features

- Single-file shell (`nyx`) with `$~` prompt
- Dynamic command installation via `nyx install <command>`
- Uses Termux mirrors and custom GitHub Pages mirrors
- Fully extensible via pull requests to the mirror repo
- Commands are stored in `$HOME/.nyxterm/bin`

## Getting Started

1. Clone the repo:

```bash
git clone https://github.com/luqmaan1007-collab/Nyxterm.git
cd Nyxterm
