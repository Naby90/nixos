{ config, pkgs, ... }:

{
  programs.niri.settings.binds = with config.lib.niri.actions; let
    spawn' = cmd: spawn "${cmd}";

  in {
    "Mod+Return".action = spawn "${pkgs.kitty}/bin/kitty"; 
    "Mod+D".action = spawn "${pkgs.fuzzel}/bin/fuzzel";    

    "Mod+Q".action = close-window;

    "Mod+H".action = focus-column-left;
    "Mod+L".action = focus-column-right;
    "Mod+J".action = focus-window-or-workspace-down;
    "Mod+K".action = focus-window-or-workspace-up;

    "Mod+Shift+H".action = move-column-left;
    "Mod+Shift+L".action = move-column-right;

  #  "XF86AudioMute".action = spawn "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
  #  "XF86AudioRaiseVolume".action = spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
  #  "XF86AudioLowerVolume".action = spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";

 #   "Mod+Shift+S".action.screenshot = { show-pointer = true; write-to-disk = true; };
  };
}

