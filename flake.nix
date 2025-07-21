{
  description = "main flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    niri.url = "github:sodiboo/niri-flake";
    stylix.url = "github:danth/stylix";
    home-manager.url = "github:nix-community/home-manager";
    nvf.url = "github:notashelf/nvf";
    swww.url ="github:LGFae/swww";
    # nixvim.url = "github:elythh/nixvim";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      niri,
      stylix,
      nvf,
      ...
    }@inputs:
    {

      # Expose NixOS configuration
      nixosConfigurations.aoi = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit self inputs; };
        modules = [
          ./hosts/configuration.nix
          inputs.stylix.nixosModules.stylix
          inputs.home-manager.nixosModules.default
        ];
      };
    };
}
