with import ./nix {};
  mkShell { 
    buildInputs = [ 
      lefthook
      argbash
      nodePackages.node2nix
    ];
  }
