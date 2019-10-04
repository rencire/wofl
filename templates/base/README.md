# Base Starter w/ Nix

# Setup
## 0) Prerequisites

- [Nix](https://nixos.org/nix/)
- [Niv](https://github.com/nmattia/niv)
- [direnv](https://github.com/direnv/direnv) (optional) 
  - allows auto loading packages when navigating to this directory
  - can install via nix: `nix-env -i direnv`


## 1) Update nixpkgs version to latest branch.
linux:
```
niv update nixpkgs -b nixpkgs-19.09
```

macos:
```
niv update nixpkgs -b nixpkgs-19.09-darwin
```

## 2) Add project packages
If package is available in nix, add it to `shell.nix`
```bash
with import ./nix;
  mkShell { 
    buildInputs = [ 
      lefthook # for managing git hooks
      <insert pkg1 here>
      <insert pkg2 here>
    ];
  }
```


## 3) Install packages 
With `direnv`. Just `cd` into this directory.

Without `direnv`.  Use `nix-shell`:
```
nix-shell
```

## 4) Setup git hooks
Run:
```
lefthook install
```
Also see `lefthook.yml.sample` for a template of git hooks.

## 5) Add License
Dont' forget to add a license to your project.  By default, an MIT license is provided; add your name to it.


## 6) Keep configuring, or start developing!


