{
  description = "A Nix-flake-based development environment";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs =
    {
      nixpkgs,
      ...
    }:
    let
      supportedSystems = nixpkgs.lib.systems.flakeExposed;

      forAllSystems =
        function:
        nixpkgs.lib.genAttrs supportedSystems (
          system:
          function {
            pkgs = import nixpkgs {
              inherit system;

              overlays = [
                (final: previous: {
                  dst = final.callPackage ./.nix/pkgs/dst { };
                })
              ];
            };

            inherit system;
          }
        );

      installNixPackages = pkgs: [
        pkgs.busybox
        pkgs.curl
        pkgs.dst
        pkgs.ffmpeg
        pkgs.git
        pkgs.go-task
        pkgs.jq
        pkgs.rclone

        pkgs.nix
        pkgs.nixd # Nix Language Server
        pkgs.nixfmt # Nix Formatter
      ];

      installNixFormatter = pkgs: pkgs.nixfmt-tree;
    in
    {
      formatter = forAllSystems ({ pkgs, ... }: installNixFormatter pkgs);

      devShells = forAllSystems (
        { pkgs, ... }:
        {
          default = pkgs.mkShellNoCC {
            packages = installNixPackages pkgs;
          };
        }
      );

      packages = forAllSystems (
        { pkgs, ... }:
        {
          default = pkgs.buildEnv {
            name = "profile";
            paths = installNixPackages pkgs;
          };
        }
      );
    };
}