{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        home-manager

        # terminal tools
        neofetch
        onefetch
        superfile
        lazydocker
        tree
        htop
        fd
        you-get
        tldr
        lshw
        busybox       
        wget

        # tools
        nautilus
        resources
        obsidian

        # dev
        sublime4
        sublime-merge
        docker-compose
        jetbrains-toolbox
        dbeaver-bin
        gnumake
        
        # language
        php84
        php84Packages.composer
        python313

        # gnome
        gnome-tweaks

        # social
        telegram-desktop
        firefox
        google-chrome
        slack

        # media | document
        vlc
        gimp
        tdf
        geeqie
        onlyoffice-bin
        pavucontrol
        audacious
        obs-studio
    ];

    fonts.packages = with pkgs; [
        fira-code
    ];
}
