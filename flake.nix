{
  description = "chatgpt-your-projects";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nodejs-18_x
            nodePackages.npm
            nodePackages.yarn
            direnv
          ];
          
          shellHook = ''
            echo "Node.js development environment loaded"
            echo "Node version: $(node --version)"
            echo "NPM version: $(npm --version)"
          '';
        };
      });
}