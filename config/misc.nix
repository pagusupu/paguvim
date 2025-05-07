_: {
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  performance.byteCompileLua = {
    enable = true;
    nvimRuntime = true;
    plugins = false;
  };
  extraConfigVim = ''
    aun PopUp.-1-
    aun PopUp.-2-
    aun PopUp.How-to\ disable\ mouse
  '';
  enableMan = false;
  luaLoader.enable = true;
  vimAlias = true;
  withPython3 = false;
  withRuby = false;
}
