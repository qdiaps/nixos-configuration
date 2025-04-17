# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./packages.nix
        ./modules/bundle.nix
    ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos";
    networking.networkmanager.enable = true;

    time.timeZone = "Europe/Kyiv";
    i18n.defaultLocale = "ru_RU.UTF-8";

    nix.settings = { 
        experimental-features = [ "nix-command" "flakes" ];
        auto-optimise-store = true;
    };

    services.printing.enable = true;

    services.gnome.core-utilities.enable = false;

    networking.firewall.allowedTCPPorts = [ 
      9099 # for XDebug
    ]; 
    nixpkgs.config = {
        allowUnfree = true;
        permittedInsecurePackages = [
            "openssl-1.1.1w"
        ];
    };

    system.stateVersion = "24.11";
}
