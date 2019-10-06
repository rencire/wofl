{ sources ? import ./sources.nix }:

let
  overlay = selfpkgs: superpkgs:
      { 
        sources = sources;
	niv = superpkgs.haskell.lib.justStaticExecutables (import sources.niv {}).niv;
	argbash = superpkgs.callPackage ./argbash.nix {};
	lefthook = superpkgs.callPackage ./lefthook.nix {};
      };
in
import sources.nixpkgs
  { overlays = [ overlay ] ; config = {}; }
