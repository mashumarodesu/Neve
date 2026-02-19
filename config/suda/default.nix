{
  lib,
  config,
  ...
}:
{
  imports = [
    ./suda-nvim.nix
  ];

  options = {
    suda.enable = lib.mkEnableOption "Enable suda module";
  };
  config = lib.mkIf config.suda.enable {
    suda-nvim.enable = lib.mkDefault true;
  };
}
