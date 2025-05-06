{
  lib,
  pkgs,
  ...
}:
{
  lsp = {
    servers = {
      nil_ls = {
        enable = true;
        settings = {
          formatting.command = [ "${lib.getExe pkgs.alejandra}" ];
          nix.flake.autoArchive = false;
        };
      };
      cssls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      taplo.enable = true;
      yamlls.enable = true;
    };
    inlayHints.enable = true;
  };
  plugins = {
    lspconfig.enable = true;
    lsp-format.enable = true;
    lsp-lines.enable = true;
  };
}
