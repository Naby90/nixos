{
  config,
  pkgs,
  ...
}: {
  programs.waybar = {
    enable = true;

    settings = {
      main = {
        modules-right = ["clock"];
        clock = {
          format = "{:%H:%M}";
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 14px;
        color: #ffffff;
      }

      window#waybar {
        background-color: #1e1e2e;
      }
    '';
  };
}

