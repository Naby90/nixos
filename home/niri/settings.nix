{ lib, pkgs, ... }:

{
  programs.niri.settings = {
    spawn-at-startup = [
      { command = ["waybar"]; }
   #   { command = ["systemctl", "--user", "start", "hyprpolkitagent"]; }
   #   { command = ["xwayland-satellite"]; }
{ command = ["sh" "-c" "swww-daemon & sleep 1 && swww img /etc/nixos/assets/Wallpapers/wallhaven-x6mlg3.png"]; }
    ];
  };
}

