# . files

This is a repo of my customised dotfiles. The plan is to create an install script so that when I get to a new machine its easy to get into a state I like. It is also a good place to backup files as well as share we anyone that is intrested.

## install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.
