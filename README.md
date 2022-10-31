# n-i-x

Wrapper for nix (the cli tool) named n-i-x because the nix landscape isn't confusing enough.

n-i-x is not to be confused with:
- **nix** the domain specific configuration language
- **nix** the CLI tool
- **nix** the package manager
- **nix-shell** the ephemeral nix shell environment
- **nix-env** the legacy cli for interacting with the package manager
- **nixOS** the linux operating system

The purpose of n-i-x is to provide a more sane UI/UX for people like me, who want to use the new flake based nix package manager on all their linux systems and have a good experience (but without resorting to using nixOS).

## usage examples:
nix upgrade (upgrade all packages)
nix upgrade <package_name> (upgrade specific package)
nix install <package_name>
nix remove <package_name>
nix log (show history)
nix ls (list installed packages)
nix search <package_name> (search for pkgs in the nixpkgs repo)

