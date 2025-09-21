{ pkgs }:

pkgs.rustPlatform.buildRustPackage rec {
  pname = "basalt-cli";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "basalt-rs";
    repo = "basalt-cli";
    rev = "v1.0.0";
    hash = "sha256-wBxu7AH3XwmJEvtaiXNtUxtJZFqaDqMwKfHPgm42lps=";
  };
  cargoHash = "sha256-VZDAin5OyLqPd9oTB6yZoLtp2dSSI13tbIit/OOjyoU=";
  nativeBuildInputs = with pkgs; [
      pkg-config
    ];
    buildInputs = with pkgs; [
      openssl
    ];
}
