{ inputs, ... }:
{
  perSystem =
    {
      pkgs,
      config,
      ...
    }:
    {
      pre-commit.settings = {
        hooks = {
          deadnix.enable = true;
          nil.enable = true;
          nixfmt-rfc-style.enable = true;
          statix.enable = true;
        };
        excludes = [ "flake.lock" ];
      };
      devShells.default = pkgs.mkShell {
        shellHook = config.pre-commit.installationScript;
      };
    };
  imports = [ inputs.git-hooks-nix.flakeModule ];
}
