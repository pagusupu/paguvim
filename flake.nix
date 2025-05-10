{
  outputs =
    {
      nixvim,
      flake-parts,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
      ];
      perSystem =
        { system, ... }:
        let
          nixvimModule = {
            inherit system;
            module = import ./config;
          };
          mkTest = nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule;
          mkNvim = nixvim.legacyPackages.${system}.makeNixvimWithModule;
        in
        {
          checks.default = mkTest nixvimModule;
          packages.default = mkNvim nixvimModule;
        };
      imports = [ ./parts ];
    };

  inputs = {
    nixvim.url = "github:nix-community/nixvim";

    git-hooks-nix = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
}
