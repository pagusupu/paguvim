_: {
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  performance.byteCompileLua = {
    enable = true;
    nvimRuntime = true;
    plugins = true;
  };
  extraConfigVim = ''
    aun PopUp.How-to\ disable\ mouse
    aun PopUp.-1-
  '';
  enableMan = false;
  luaLoader.enable = true;
  vimAlias = true;
  withPython3 = false;
  withRuby = false;
}
