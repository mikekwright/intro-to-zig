{
  description = "Flake to setup devenv for book";

  inputs = {
    # Zig version 0.15.1 (using nixhub.io)
    nixpkgs.url = "github:nixos/nixpkgs/bce5fe2bb998488d8e7e7856315f90496723793c";
    devenv.url = "github:cachix/devenv";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, devenv, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ devenv.flakeModule ];

      systems = [ "x86_64-linux" "aarch64-darwin" ];

      perSystem = { ... }: 
        let
          project-name = "intro-to-zig";
        in
        {
          devenv.shells.default = {
            _module.args = { inherit project-name; };
            imports = [ ./devenv.nix ];
          };
      };
    };
}
