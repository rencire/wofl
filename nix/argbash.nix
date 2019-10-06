{ sources, stdenv, fetchFromGitHub, autoconf}:

stdenv.mkDerivation rec {
  pname = "argbash";

  version = sources.argbash.rev;

  src = sources.argbash;

  sourceRoot = "${src}/resources";

  nativeBuildInputs = [ autoconf ];

  makeFlags = [ "PREFIX=$(out)" ];

  meta = with stdenv.lib; {
    inherit (sources.argbash) homepage description;
    license = licenses.free; # custom license.  See LICENSE in source repo.
    maintainers = with maintainers; [ rencire ];
  };
}

