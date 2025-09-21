{ pkgs, ... }:
let
  basaltCli = import ./packages/cli.nix { inherit pkgs; };
in
{
  environment = with pkgs; {
    systemPackages = [
      basaltCli
      git
    ];
  };
}
