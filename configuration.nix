{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim ethereum cosmos
  ]

  services.openssh = {
    enable = true;
  };

}