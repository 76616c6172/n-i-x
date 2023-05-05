{
  description = "n-i-x is a wrapper for the nix CLI";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  # TODO insert tests
  outputs = { self, nixpkgs }:
    let
      # Generate a user-friendly version number
      version = "build-${builtins.substring 0 9 self.lastModifiedDate}";
      # System types to support
      supportedSystems = [ "x86_64-linux" ];
      # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      # Nixpkgs instantiated for supported system types
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in
    {
      # Provide some binary packages for selected system types
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in
        {
          # make the flake (make derivation)
          n-i-x = pkgs.stdenv.mkDerivation {
            pname = "n-i-x"; inherit version;
            src = ./src;
            installPhase =
            ''
              mkdir -p $out/bin
              cp *n-i-x* $out/bin/
            '';
          };
        });
    };
}