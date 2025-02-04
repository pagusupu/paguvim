{
  lib,
  pkgs,
  ...
}:
{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nil_ls = {
          enable = true;
          settings = {
            formatting.command = [ "${lib.getExe pkgs.alejandra} -q -c" ];
            nix.flake.autoArchive = false;
          };
        };
        cssls.enable = true;
        html.enable = true;
        jsonls.enable = true;
        taplo.enable = true;
        yamlls.enable = true;
      };
    };
    lsp-format.enable = true;
    lsp-lines.enable = true;
  };
}
