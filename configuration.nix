{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim UNSIGNED
  ]

  services.openssh = {
    enable = true;
  };

}