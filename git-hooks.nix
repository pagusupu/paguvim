{inputs, ...}: {
  perSystem = {
    pkgs,
    config,
    ...
  }: {
    pre-commit.settings = {
      hooks = {
        alejandra.enable = true;
        deadnix.enable = true;
        statix.enable = true;
        nil.enable = true;
      };
      excludes = ["flake.lock"];
    };
    devShells.default = pkgs.mkShell {
      shellHook = config.pre-commit.installationScript;
    };
  };
  imports = [inputs.git-hooks-nix.flakeModule];
}
