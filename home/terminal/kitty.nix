{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_window_close = 0;
      font_size = 12;
      enable_audio_bell = 0;
    };

    themeFile = "Arthur"; # Optional, pick any from https://github.com/dexpota/kitty-themes
  };
}
