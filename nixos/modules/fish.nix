{
	programs.fish = {
		enable = true;
		shellAliases = {
			rebuild-nix = "nixos-rebuild switch --use-remote-sudo --flake ~/nix";
			rebuild-home = "home-manager switch --flake ~/nix";
		};
	};
}
