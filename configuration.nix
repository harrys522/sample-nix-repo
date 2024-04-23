{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg
  ]

  services.openssh = {
    enable = true;
  };

}