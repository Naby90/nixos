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
     kitty
     ripgrep
     cachix                                                                                                                                
     neofetch                                                                                                                              
     waybar                                                                                                                                
     fuzzel
     wl-clipboard
   ];
 }
