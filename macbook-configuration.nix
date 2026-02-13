{ config, pkgs, ... }:

{
  # nix allow broadcom driver  
  nixpkgs.config.permittedInsecurePackages = [
	"broadcom-sta-6.30.223.271-59-6.12.69"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}