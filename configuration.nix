{ config, pkgs, ... }:

{
  imports = [
    ./sample.nix
  ]

  environment.systemPackages = with pkgs; [ 
    wget vim
  ]

  services.openssh = {
    enable = true;
  };

}