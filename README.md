# My Vim Configuration

This repository contains my custom Vim configuration file (`.vimrc`). It includes essential settings, key mappings, and plugins to enhance the Vim experience, particularly for C/C++ and Go development.

## Features

### General Settings
- Uses a **dark background** for better visibility.
- Enables **syntax highlighting** and **filetype-based indentation**.
- Enables **true-color mode** (if supported by the terminal).
- **Line numbering** (relative and absolute).
- Highlights matching **parentheses and brackets**.
- **Incremental search** with highlighting.
- **Clipboard integration** (system clipboard support).
- **Mouse support** enabled.

### Cursor Behavior
- Fixes cursor shape for **Normal** (block) and **Insert** (thin I-beam) modes.

### Indentation & Formatting (C/C++)
- Tabs are converted to **4 spaces**.
- **Auto-indentation** is enabled.

### Autocompletion & Snippets (C/C++)
- **Omnifunc-based autocompletion** for C/C++.
- Supports snippets (requires `vim-snipmate` or `ultisnips`).

### Go Development
- Includes **`vim-go`**, a powerful plugin for Go development.
- Provides features like **code formatting**, **linting**, **testing**, and **dependency management**.
- Automatically updates Go binaries when installing the plugin.

### Key Mappings
- Sets the **leader key** to `Space`.
- Enables `Ctrl + Space` for autocompletion.

### Plugins (via Vim-Plug)
This setup uses **Vim-Plug** for plugin management. Key plugins included:
- **`coc.nvim`** – Autocompletion framework.
- **`vim-snippets`** – Predefined snippets.
- **`ale`** – Syntax checking and linting.
- **`vim-go`** – Go language support with enhanced features.

### Installation Instructions
1. Clone this repository and place the `.vimrc` file in your home directory (`~/.vimrc`).
2. Ensure **Vim-Plug** is installed. If not, it will be automatically downloaded when Vim is opened.
3. Open Vim and run:
   ```vim
   :PlugInstall
   ```

## Usage
- Use `Ctrl + Space` for autocompletion.
- If `NERDTree` is installed, use `<leader> + e` (Space + e) to toggle the file explorer.
- For Go development:
  - Run `:GoInstallBinaries` to install required Go tools.
  - Use `:GoFmt` to format Go code.
  - Run tests using `:GoTest`.

## Notes
- You can modify the `.vimrc` file to add more customizations as per your workflow.
- Ensure you have Vim 8+ for full compatibility.
- Install Go and configure your `$GOPATH` for optimal Go development.

---
This configuration is optimized for personal use but can be customized further based on individual preferences.

