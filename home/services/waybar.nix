{
  config,
  pkgs,
  inputs,
  ...
}:

{
programs.waybar = {
enable = true;

settings.main = {
  modules-right = ["clock"];
};
};
}
