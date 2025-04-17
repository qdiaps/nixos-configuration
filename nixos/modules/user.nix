{ pkgs, ... }: {
	users.users.tortue = {
		isNormalUser = true;
		extraGroups = [ "networkmanager" "wheel" "input" "docker" ];
		shell = pkgs.fish;
	};
}