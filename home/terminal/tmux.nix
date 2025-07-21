{ pkgs, config, ... }:
{
  programs.tmux = {
    enable = true;
    # shortcut = "a";
    # aggressiveResize = true; -- Disabled to be iTerm-friendly
    baseIndex = 1;
    newSession = true;
    # Stop tmux+escape craziness.
    escapeTime = 0;
    # Force tmux to use /tmp for sockets (WSL2 compat)
    secureSocket = false;

    plugins = with pkgs; [
      tmuxPlugins.better-mouse-mode
      tmuxPlugins.sensible
      tmuxPlugins.yank
{
    plugin = tmuxPlugins.resurrect;
    extraConfig = ''
    set -g @resurrect-strategy-vim 'session'
    set -g @resurrect-strategy-nvim 'session'
    set -g @resurrect-capture-pane-contents 'on'
    '';
}
{
    plugin = tmuxPlugins.continuum;
    extraConfig = ''
    set -g @continuum-restore 'on'
    set -g @continuum-boot 'on'
    set -g @continuum-save-interval '10'
    '';
}

];

    };
    }
