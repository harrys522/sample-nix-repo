{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget gpg vim
  ]

  services.openssh = {
    enable = true;
  };

}