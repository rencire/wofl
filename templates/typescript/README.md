# Typescript Starter w/ Nix

# Setup
## 0) Prerequisites

- [Nix](https://nixos.org/nix/)
- [Niv](https://github.com/nmattia/niv)
- direnv (optional) 
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
If package is available in nix, add it to `shell.nix`.
By default, `nodejs` and `lefthook` are already listed:
```bash
with import ./nix;
  mkShell { 
    buildInputs = [ 
      nodejs-10_x
      lefthook # for managing git hooks
      <insert more packages here>
    ];
  }
```


## 3) Install packages 
With `direnv` installed, just `cd` into this directory.

Without `direnv`,  use `nix-shell`:
```
nix-shell
```

Next, install node-specific packages:
```
npm ci
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



# TODO
- migrate node packages to be handled via Nix instead of npm
