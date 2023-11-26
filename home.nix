{ config, lib, pkgs, username, email, dotfilesDir, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "cyberPink";
  home.homeDirectory = "/home/"+username;

  programs.home-manager.enable = true;

  home.stateVersion = "22.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    # Core
    zsh
    fish
    git
  ];

}
