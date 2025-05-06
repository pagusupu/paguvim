_: {
  colorschemes.rose-pine = {
    enable = true;
    settings = {
      highlight_groups =
        let
          border = {
            fg = "foam";
            bg = "base";
          };
          body = {
            bg = "base";
          };
        in
        {
          NotifyBackground = {
            fg = "base";
            bg = "base";
          };
          # ill clean this up when im not tired
          NotifyDEBUGBorder = border;
          NotifyDEBUGBody = body;
          NotifyERRORBorder = border;
          NotifyERRORbody = body;
          NotifyINFOBorder = border;
          NotifyINFOBody = body;
          NotifyTRACEBorder = border;
          NotifyTRACEBody = body;
          NotifyWARNBorder = border;
          NotifyWARNBody = body;
        };
      enable.legacy_highlights = false;
      styles.italic = false;
      variant = "main";
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
