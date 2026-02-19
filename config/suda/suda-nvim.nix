{ lib, config, ... }:
{
  options = {
    suda-nvim.enable = lib.mkEnableOption "Enable neo-tree module";
  };
  config = lib.mkIf config.suda-nvim.enable {
    plugins.vim-suda = {
      enable = true;
    };
  };
}
