# mcdl.vim

**Minimum Configuration Dein.vim setting Locally.**


## Description

Cloning this repository will build a Vim or NeoVim environment with only dein.vim installing in a minimal configuration.
Does not destroy environment of your vim or neovim in short.


## Usage

### Common point.

```terminal
# Fork and clone or clone first.
cd cloned/to/path/mcdl.vim

# Go to mcdl.vim and create a branch to develop.
git checkout -b branch_name

#Use vim for development or experimentation.
(vim or nvim) .vimrc toml/*.toml

# Execute plugins and dein.vim setup first.
./vim.mcdl.sh
./nvim.mcdl.sh

# Execute minimum configuration dein.vim setting locally.
./vim.mcdl.sh example_files
./nvim.mcdl.sh example_files

# Remove the installed plugins and try again.
sh ./clean_plugins.sh
```


### Part 1.

If you are using a vim or NeoVim plugin and encounter a bug, you should report it to the plugin developer in an issue.
Let's fork this repository to build the minimum buggy configuration.
After pushing, make a link to the branch where the bug is occurring and report it in an issue.

The plugin developer clones the linked repository and moves it to the branch with the bug environment.
You can build a minimal bug environment locally, so debug it.


### Part 2.

When you have a plugin you want to try, you can experiment without polluting your main environment.
Or it could be a testing ground for plugins you develop.

You can clone this repository for development or experiment and switch it to the feature branch.


## Licens
MIT
