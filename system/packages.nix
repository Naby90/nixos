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
    fuzzel
    wl-clipboard
    swww
    nautilus
    btop
    gnome-disk-utility

    anki-bin
  ];
}
