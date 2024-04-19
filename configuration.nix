{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget
  ]

  services.openssh = {
    enable = true;
  };

}