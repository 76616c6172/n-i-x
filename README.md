# N-i-x

A wrapper for nix (the cli tool). Named n-i-x because the nix landscape isn't confusing enough.  
I like nix a lot, but the level of complexity around using it is insane.  

n-i-x is not to be confused with:
- **nix** the CLI tool
- **nix** the domain specific configuration language
- **nix** the package manager
- **nix-shell** the ephemeral shell environment
- **nix-env** the legacy cli for interacting with the package manager
- **nixOS** the linux operating system

The purpose of n-i-x is to provide a more sane UI/UX for people like me, who want to use the new flake based profiles to manage packages declaratively on non nixOS linux systems.

## n-i-x depends on
nix (the cli tool)  
bash  
git  
jq  
sort  
sed  

## Usage:

> **n-i-x is intended to be aliased: `alias nix="n-i-x"`**

nix upgrade (upgrade all packages)  
nix upgrade <package_name> (upgrade specific package)  
nix install <package_name>  
nix remove <package_name>  
nix log (show history)  
nix ls (list installed packages)  
nix show <package_name> (shows pkg if it exists in the nixpkgs repo)  
nix search <term> (search nixpkgs for pkgs with <name> or part of description)  
nix shell <packages...> (drop into ephemeral nix shell with specified packages)  
nix rollback (roll back one generation from the nix log output)  
nix rollback <number> (roll back to generation <number> from the nix log output)  


## Installation

**Requires** `cat "experimental-features = nix-command flakes" >> $HOME/.config/nix/nix.conf`

```bash
nix profile install 'github:76616c6172/n-i-x#n-i-x' --refresh
```
