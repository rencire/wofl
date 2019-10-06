# WoFl
An opinionated start to a dev workflow with Git commit hook setup.

What wofl provides currently:
- Provides configuration for nix packages through `shell.nix`.
- Auto loads `shell.nix` when `cd`ing into project directory via `direnv`.
- Abstracts away Git hooks setup in a cross-platform, language-agnostic manner with `lefthook`.
- Setup tool (`commitizen`) to commit Git messages with `commitizen conventional changelog` format.  Enforces format via `commitlint`.

Lastly, one needs to decide on how to release their code to users.  This varies heavily depending on each project type (app or library, etc.), its tools/technologies, and so on.

Once you have more than one committer in the project, might be worth integrating a CI/CD server in the pipeline for testing, packaging, releasing/deploying, etc. .  See 'CI/CD' section below.

# Usage (WIP)
## With Installation
### Nix
```
nix-env -i wofl
wofl new <proj_name>
```

## Without Installation
### Nix
```
nix-shell -p wofl --run "wofl new <proj_name>"
```

# Development
## Prerequisites
- nix package manager
- direnv


# TODO
- [] migrate tools used in this project (e.g. lefthook) to a nix package.
- [] consolidate all tools and configuration to a nix package.
- [] add cli tool/script to support steps in Usage section.
    - Just needs to create a new directory, and copy config files over.


## Notes
### Adding npm tools
We can add tooling libraries from npm to `node_packages/packages.json`.  Currently, this is used for adding packages that aren't required on CI/CD, and would live on dev machine only.

For example, packages involving linting (e.g. @commitlint/config-conventional, @typescript-eslint/eslint-plugin, etc.) can live here.


1. Add packages to `node_packages/node-packages.json`
3. Run `node2nix --nodejs-10 -i node-packages.json`


# Checklist
A simple checklist of potential tools/services to use for dev workflow.
Definitely non-exhaustive, too many choices out there.

## VCS:
- [] git
- [] svn
- [] mercurial

### Managing Git hooks:
- [] lefthook
- [] git-hooks
- [] overcommit
- [] precommit

References:
https://githooks.com/


### Hosting repo

#### SaaS
- [] github
- [] bitbucket
- [] sourcehut 
- [] gitlab

#### Self-host
- [] gitea
- [] gogs
- [] gitlab 


## Standardize commit messages
- [] commitizen w/ standard changelog format
  - [] can augment with commitlint

## Linting 
Depends on the project language(s)

## Testing
Depends on the project language(s)

## Release Tools
- [] semantic-release
- [] standard-version

## CI/CD
### Server/services:
- [] Jenkins
- [] Travic CI
- [] Gitlab CI
- [] Circle CI



