{
  inputs,
  pkgs,
  ...
}: {
  imports = [
  inputs.niri.homeModules.niri 
  ./settings.nix 
  ./binds.nix
  ./nix-colors.nix
 # ./rules.nix
  ];

  }
