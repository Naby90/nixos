{
  config,
  pkgs,
  inputs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    wget
    git
    ripgrep
    cachix
    neofetch
    waybar
    fuzzel
    wl-clipboard
  ];
}
