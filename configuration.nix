{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim kubo
  ]

  services.openssh = {
    enable = true;
  };

}