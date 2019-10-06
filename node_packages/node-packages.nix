# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {};
in
{
  "@commitlint/config-conventional" = nodeEnv.buildNodePackage {
    name = "_at_commitlint_slash_config-conventional";
    packageName = "@commitlint/config-conventional";
    version = "8.1.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/@commitlint/config-conventional/-/config-conventional-8.1.0.tgz";
      sha512 = "/JY+FNBnrT91qzDVIoV1Buiigvj7Le7ezFw+oRqu0nYREX03k7xnaG/7t7rUSvm7hM6dnLSOlaUsevjgMI9AEw==";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "Shareable commitlint config enforcing conventional commits";
      homepage = "https://github.com/conventional-changelog/commitlint#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
  };
}