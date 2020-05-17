{ sources ? import ./sources.nix }:
let
  # Insert custom overlays here. Good place for custom packages.
  overlay = selfpkgs: superpkgs:
    {};
in
  import sources.nixpkgs
    { overlays = [ overlay ] ; config = {}; }

