{ config, pkgs, ... }: {
	imports = [
		./modules/bundle.nix
	];

	home = {
		username = "tortue";
		homeDirectory = "/home/tortue";
		stateVersion = "24.11";
	};
}
