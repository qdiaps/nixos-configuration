# Installing

```bash
git clone https://github.com/qdiaps/nixos-configuration.git nix
cd nix

nixos-rebuild switch --use-remote-sudo --flake .
home-manager switch --flake .
```

# Aliases

| Alias | Command |
| --- | --- |
| rebuild-nix | nixos-rebuild switch --use-remote-sudo --flake ~/nix |
| rebuild-home | home-manager switch --flake ~/nix |

