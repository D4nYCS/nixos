{ pkgs, config, lib, ... }:

{

	imports =
    [ # Include the results of the hardware scan.
      ./nas-configuration.nix
    ];


	hardware.graphics.enable = true;

	services.xserver.videoDrivers = ["nvidia"];

	hardware.nvidia = {

		modesetting.enable = true;

		powerManagement.enable = false;

		powerManagement.finegrained = false;

		open = false;

		nvidiaSettings = true;

		package = config.boot.kernelPackages.nvidiaPackages.stable;

	};
}
