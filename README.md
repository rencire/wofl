# WOFL (WOrkFLow)
A project template generator for an opinionated workflow.  Depends on:

- git
- lefthook
- nix
- niv

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


Now start working on your project!

# Development
See this section if you want to hack on `wofl` code.

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

### Templates

#### Typescript
The typescript template depends on node packages.  If you are changing the template's package.json (e.g. adding/removing/updating node packages), then you need to regenerate the via [node2nix][https://github.com/svanderburg/node2nix] tool:
```
```

### Misc
For git hooks, currently experimenting with `lefthook` tool. 
Alternative would be to simply write some shell scripts, and symlink them to each `.git/hooks`.


# TODO
- [] add a `default.nix` for packaging.
- [] add script to update nixpkgs versions for all templates 
- [] add logic to change nixpkgs branch (nix/sources.json) depending on which os we are using
- [] add screencast on using the tools
