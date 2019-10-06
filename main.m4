#!/bin/bash

help_msg="
Examples:

Create a new project with 'Base' template:

    wofl new <proj_name> 
    wofl new <proj_name> -t base

Example w/ Typescript template:

    wofl new <proj_name> -t typescript
"

# m4_ignore(
echo "This is just a script template, not the script (yet) - pass it to 'argbash' to fix this." >&2
exit 11  #)Created by argbash-init v2.8.1
# ARG_POSITIONAL_SINGLE([command], [Command.  Currently only supports 'new'], )
# ARG_POSITIONAL_SINGLE([directory], [Directory name of new project.], )
# ARG_OPTIONAL_SINGLE([template], t, [A option with short and long flags and default], [base])
# ARG_DEFAULTS_POS
# ARG_HELP([Create a project based off of nix and git hooks workflow.], [$help_msg])
# ARG_VERSION([echo $0 v0.1])
# ARGBASH_SET_INDENT([  ])
# ARGBASH_GO

# [ <-- needed because of Argbash

# exit on errors
set -e

function cleanup () {
  rm -rf $_arg_directory
}

trap cleanup ERR


# Path helper variables
bin_path="$(dirname $(readlink $0))"  # get path of `wofl` script
root_path="$(dirname $bin_path)"
templates_path="$root_path/templates"

echo $bin_path
echo $root_path
echo $templates_path

# Main logic
#
#if [ "$_arg_command" != "new" ]; then
#  echo "Only 'new' command is supported"
#else
#  if [ -z "$_arg_directory" ]; then 
#    echo "Must supply a directory name" 
#  fi
#
#  mkdir -p $_arg_directory 
#  rsync -r "$templates_path/$_arg_template/" "./$_arg_directory/"
#
#  # TODO change these to debug logs
#  echo "Created folder '$_arg_directory' with template '$_arg_template'"
#
#  echo "Navigating into '$_arg_directory'..."
#  cd $_arg_directory
#
#  # Manually drop into nix shell if `direnv` is not installed. 
#  if [ -z "$(command -v direnv)" ]; then
#    nix-shell
#  fi 
#
#  echo "Initializing git repo..."
#  git init
#
#  echo "Installing git hooks..."
#  lefthook install    
#
#  echo "Done"
#fi
#
# ] <-- needed because of Argbash
