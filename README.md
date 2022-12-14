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

**n-i-x** is intended to be aliased such:  
`alias nix="n-i-x"`

**nix upgrade** upgrade all packages  
**nix upgrade <package-name>** upgrade specific package  
**nix install <package-name>** install package from nixpkgs repo  
**nix remove <package-name>** remove package from the profile  
**nix log** show history of package modifications  
**nix ls** list installed packages in chronological order  
**nix show <package-name>** shows pkg if it exists in the nixpkgs repo  
**nix search <term>** search nixpkgs repo for partial matches in name/description  
**nix shell** drop into nix shell environment specified in ./flake.nix or parent ../flake.nix  
**nix shell <packages..>** drop into ephemeral nix shell env with specified nixpkgs  
**nix rollback** roll back one generation from the nix log output  
**nix rollback <number>** roll back to a specific generation as seen in nix log output  
**nix manifest** show nix manifest.json for the current profile  

n-i-x automatically stores a "live copy" of ~/.nix-profile/manifest.json in ~/.config/n-i-x/manifest.json under version control.
The idea is to be able to easily replicate this single profile on other machines by copying it to ~/.nix-profile/manifest.json and running `n-i-x upgrade`.

## Installation

**Requires**  
`cat "experimental-features = nix-command flakes" >> $HOME/.config/nix/nix.conf`

```bash
nix profile install 'github:76616c6172/n-i-x#n-i-x' --refresh
```
