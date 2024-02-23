{ lib, pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.displayManager = {
    sddm.enable = true;
    defaultSession = "plasmawayland";
  };
  services.xserver.desktopManager.plasma5.enable = true;

  environment.systemPackages = with pkgs; [
    plasma-browser-integration
    plasma5Packages.bismuth
  ];
}
