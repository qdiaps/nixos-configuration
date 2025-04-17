{ pkgs, ... }: {
	services.xserver = {
		enable = true;
		displayManager.gdm = {
			enable = true;
			wayland = false;
		};
		desktopManager.gnome.enable = true;
		xkb = {
			layout = "us";
			variant = "";
		};
    	videoDrivers = [ "nvidia" "intel" ];
		excludePackages = with pkgs; [ xterm ];
	};
}