{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim ethereum
  ]

  services.openssh = {
    enable = true;
  };

}