
{ config, pkgs, inputs, lib, self, ... }:

{



  home.username = "demonback";
  home.homeDirectory = "/home/demonback";



  # Add nixvim binary to your PATH
  home.packages = [
    inputs.nixvim.packages.${pkgs.system}.default
  ];



  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}
