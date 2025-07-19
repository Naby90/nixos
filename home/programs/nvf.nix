{ config, pkgs, lib, ... }:

{
  programs.nvf = {
    enable = true;
    settings = {
      vim.vimAlias = true;
      vim.viAlias = false;

      vim.lsp.enable = true;

      # Add more modules, keymaps, plugins, etc. here
      plugins = {
        which-key.enable = true;
        telescope.enable = true;
      };

      clipboard.providers.wl-clipboard.enable = true;
    };
  };
}

