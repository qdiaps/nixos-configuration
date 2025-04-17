{ config, ... }: {
	hardware = {
        graphics.enable = true;

        nvidia = {
            modesetting.enable = true;
            open = true;
            nvidiaSettings = true;
            package = config.boot.kernelPackages.nvidiaPackages.stable;

            powerManagement = {
                enable = true;
                finegrained = false;
            };

            prime = {
                intelBusId = "PCI:0:2:0";
                nvidiaBusId = "PCI:1:0:0";
            };
        };
    };
}