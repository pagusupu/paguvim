_: {
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      integrations = {
        barbar = true;
        noice = true;
        notify = true;
      };
      flavour = "frappe";
      transparent_background = true;
    };
  };
  plugins = {
    barbar = {
      enable = true;
      settings.auto_hide = 1;
    };
    indent-blankline = {
      enable = true;
      settings = {
        exclude.filetypes = [
          "checkhealth"
          "dashboard"
          "help"
          "''"
        ];
        scope.enabled = false;
      };
    };
    notify = {
      enable = true;
      settings = {
        fps = 60;
        render = "minimal";
        stages = "fade";
        timeout = 1000;
      };
    };
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
    autoclose.enable = true;
    noice.enable = true;
    rainbow-delimiters.enable = true;
    treesitter-refactor.enable = true;
    web-devicons.enable = true;
    yazi.enable = true;
  };
}
