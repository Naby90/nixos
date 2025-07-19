{
  config,
  pkgs,
  inputs,
  lib,
  self,
  ...
}:

{
  imports = [
    ../home/programs/kitty.nix
     inputs.nvf.homeManagerModules.default
    ../home/programs/nvf.nix
    ../home/programs/tmux.nix
  ];

  home.username = "demonback";
  home.homeDirectory = "/home/demonback";

  # Add nixvim binary to your PATH
  # home.packages = [
  # inputs.nixvim.packages.${pkgs.system}.default
  #];

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}
