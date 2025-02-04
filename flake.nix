{
  outputs =
    {
      nixvim,
      flake-parts,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      perSystem =
        {
          system,
          pkgs,
          ...
        }:
        let
          nixvimModule = {
            inherit pkgs;
            module = import ./config;
          };
          inherit (inputs.nixvim.lib.${system}) check;
          nixvim = inputs.nixvim.legacyPackages.${system};
        in
        {
          checks.default = check.mkTestDerivationFromNixvimModule nixvimModule;
          packages.default = nixvim.makeNixvimWithModule nixvimModule;
        };
      imports = [
        ./git-hooks.nix
        ./treefmt.nix
      ];
    };

  inputs = {
    nixvim.url = "github:nix-community/nixvim";

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    git-hooks-nix = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # input cleanup
    nixvim.inputs = {
      devshell.follows = "";
      flake-compat.follows = "";
      git-hooks.follows = "";
      home-manager.follows = "";
      nix-darwin.follows = "";
      nuschtosSearch.follows = "";
      treefmt-nix.follows = "";
    };
    git-hooks-nix.inputs = {
      flake-compat.follows = "";
      gitignore.follows = "";
    };
  };
}
