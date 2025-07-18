{
  description = "main flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    niri.url = "github:sodiboo/niri-flake";
    home-manager.url = "github:nix-community/home-manager";
    nixvim.url = "github:elythh/nixvim";
    };

  outputs = { self, nixpkgs, home-manager, niri, ... }@inputs: {

  # Expose NixOS configuration
    nixosConfigurations.aoi = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit self inputs; };
      modules = [
        ./hosts/configuration.nix
	inputs.home-manager.nixosModules.default
	];
  };
};
}
