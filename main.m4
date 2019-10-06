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
# ARG_OPTIONAL_BOOLEAN([debug], d, [Debug mode])
# ARG_DEFAULTS_POS
# ARG_HELP([Create a project based off of nix and git hooks workflow.], [$help_msg])
# ARG_VERSION([echo $0 v0.1])
# ARGBASH_SET_INDENT([  ])
# ARGBASH_GO

# [ <-- needed because of Argbash


## Exit on errors
set -e
function cleanup () {
  rm -rf $_arg_directory
}
trap cleanup ERR


# Path helper variables
bin_path="$(dirname $0)"  
root_path="$(dirname $bin_path)"
templates_path="$root_path/templates"


if [ $_arg_debug = 'on' ]; then
  echo '[debug]: 0 = $0'
  echo '[debug]: bin_path = $bin_path'
  echo '[debug]: root_path = $root_path'
  echo '[debug]: templates_path = $templates_path'
fi

# Main logic

if [ "$_arg_command" != "new" ]; then
  echo "Only 'new' command is supported"
else
  if [ -z "$_arg_directory" ]; then 
    echo "Must supply a directory name" 
  fi

  mkdir -p $_arg_directory 
  rsync -r "$templates_path/$_arg_template/" "./$_arg_directory/"

  # TODO change these to debug logs
  echo "Created folder '$_arg_directory' with template '$_arg_template'"

  echo "Navigating into '$_arg_directory'..."
  cd $_arg_directory

  echo "Initializing git repo..."
  git init

  # Setup git hooks
  echo "Setting up git hooks..."
  nix-shell --run 'lefthook install'

  echo "Done"
fi

# ] <-- needed because of Argbash
