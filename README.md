# WOFL (WOrkFLow)
A template generator for "nix and git" based workflows.

See `templates` folder for some opinionated starter templates.

# Install
WIP
```
```

# Usage
```bash
# Create project folder
wofl <cmd> <proj_name> -t <template>
```

commands (note: only 'new' is supported right now): 
- new

templates:
- base
- typescript

# Development

## Prerequisites:
- git
- Nix
- direnv (optional)

## Setup
A) With direnv: simply cd into this repo folder and you should see dependencies being loaded.

B) Without direnv: Use nix-shell command:
```bash
nix-shell
```
## Build
```
argbash main.m4 -o bin/wofl
```

## Notes

### Adding dependencies
We use [niv]() for managing 3rd party dependencies. See `.nix` files in `nix/` folder for more details.
Currently, its mainly used to track versions for tooling.



# TODO
- [] add a `default.nix` for packaging.
