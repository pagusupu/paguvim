{ inputs, ... }:
{
  perSystem.treefmt = {
    programs = {
      deadnix.enable = true;
      mdformat.enable = true;
      nixfmt.enable = true;
      statix.enable = true;
    };
    settings.global.excludes = [
      ".direnv/**"
      ".envrc"
    ];
    flakeCheck = false;
    projectRootFile = "flake.nix";
  };
  imports = [ inputs.treefmt-nix.flakeModule ];
}
