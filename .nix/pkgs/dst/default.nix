{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "dst";
  version = "1.0.1";

  # See: https://nix.dev/guides/best-practices#reproducible-source-paths
  src = fetchFromGitHub {
    owner = "stefankuehnel";
    repo = "dst";
    rev = "v${version}";
    hash = "sha256-kMAgp3b3P+24tc/VRuEFqwCxfzs8VNpu6iUqzTqX6ag=";
  };

  # This is required even though we don't use third-party modules.
  vendorHash = null;

  meta = with lib; {
    description = "A Go-based, open-source CLI tool without dependencies for downloading Disturbance Storm Time (DST) index data";
    homepage = "https://github.com/stefankuehnel/dst";
    license = licenses.gpl3;
    mainProgram = "dst";
    maintainers = [
      {
        name = "Stefan Kühnel";
        email = "git@stefankuehnel.com";
      }
    ];
  };
}