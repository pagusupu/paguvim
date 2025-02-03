{inputs, ...}: {
  perSystem.treefmt = {
    programs = {
      alejandra.enable = true;
      deadnix.enable = true;
      statix.enable = true;
    };
    settings.global.excludes = [
      ".direnv/**"
      ".envrc"
    ];
    flakeCheck = false;
    projectRootFile = "flake.nix";
  };
  imports = [inputs.treefmt-nix.flakeModule];
}
