# Neovim Plugin Setup Guide

This command helps you set up a new Neovim plugin in your LazyVim configuration.

## Usage

```bash
# With GitHub URL
install_nvim_plugin https://github.com/author/plugin-name

# With author/plugin format
install_nvim_plugin author/plugin-name
```

## Setup Steps

1. **Navigate to Neovim config directory**
   ```bash
   cd ~/.config/nvim/lua/plugins
   ```

2. **Create plugin configuration file**
   ```bash
   # Create new plugin file (replace with actual plugin name)
   touch plugin-name.lua
   ```

3. **Add plugin configuration**
   ```lua
   return {
     "author/plugin-name",
     config = function()
       -- Plugin configuration goes here
     end,
   }
   ```

4. **Restart Neovim and install**
   - Restart Neovim
   - LazyVim will automatically detect and install the new plugin
   - Or manually run `:Lazy` and press `I` to install

5. **Verify installation**
   ```vim
   :Lazy
   ```

## Notes

- LazyVim automatically manages plugin installation
- Plugin files should be placed in `~/.config/nvim/lua/plugins/`
- Configuration takes effect immediately due to symbolic links
- Check plugin documentation for specific configuration options