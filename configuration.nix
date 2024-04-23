{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim andAnother
  ]

  services.openssh = {
    enable = true;
  };

}