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

              config = {
                allowUnfree = true;
              };

              overlays = [
                (final: previous: {
                  dst = final.callPackage ./.nix/pkgs/dst { };
                })
              ];
            };

            inherit system;
          }
        );

      dependencies = pkgs: [
        pkgs.busybox
        pkgs.curl
        pkgs.dst
        pkgs.ffmpeg
        pkgs.git
        pkgs.go-task
        pkgs.jq
        pkgs.rclone
      ];

      devDependencies = pkgs: [
        pkgs.nix
        pkgs.nixd
        pkgs.nixfmt
      ];

      fmtDependencies = pkgs: pkgs.nixfmt-tree;
    in
    {
      formatter = forAllSystems ({ pkgs, ... }: fmtDependencies pkgs);

      devShells = forAllSystems (
        { pkgs, ... }:
        {
          ciEnvironment = pkgs.mkShellNoCC {
            packages = dependencies pkgs;
          };

          devEnvironment = pkgs.mkShellNoCC {
            packages = (dependencies pkgs) ++ (devDependencies pkgs);
          };
        }
      );

      packages = forAllSystems (
        { pkgs, ... }:
        {
          devEnvironment = pkgs.buildEnv {
            name = "development environment";
            paths = (dependencies pkgs) ++ (devDependencies pkgs);
          };
        }
      );
    };
}
