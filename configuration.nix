{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim ethereum polygon
  ]

  services.openssh = {
    enable = true;
  };

}