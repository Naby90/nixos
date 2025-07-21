{ config, pkgs, lib, ... }:


{
  programs.nvf = {
    enable = true;

    settings = {
      vim.vimAlias = true;
      vim.viAlias = false;

      # Enable Lua loader (optional)
      vim.enableLuaLoader = true;

      # Enable LSP
      vim.lsp.enable = true;

      # Enable telescope (fuzzy finder)
      vim.telescope.enable = true;

      # Enable treesitter
      vim.treesitter.enable = true;
    };
  };
}

