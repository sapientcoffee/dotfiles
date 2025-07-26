# . files

These are config files to set up a system the way I like it. It uses [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh). I was also inspired by [holmans dotfiles](https://github.com/holman/dotfiles)

I am running on Mac OS X, but it will likely work on Linux as well.

The plan is to create an install script so that when I get to a new machine its easy to get into a state I like. It is also a good place to backup files as well as share we anyone that is intrested.

I wrote a [blog post](https://clijockey.com/dotfiles/) about this as well.

## install

You will need to have git installed on the host to setup your enfironment ```apt-get install git``` or ```yum install git``` or ```brew install git```.
Run this;

```sh
git clone https://github.com/clijockey/dotfiles.git ~/.dotfiles
~/.dotfiles/script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

On ChromeOS need to follow the workaround for Nerd fonts [here](https://github.com/ryanoasis/nerd-fonts/issues/345).

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/clijockey/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

The current file structure is as follows;
```
.
├── LICENSE.md
├── bash
│   └── bashrc.symlink
├── git
│   ├── aliases.zsh
│   ├── completion.zsh
│   ├── gitconfig.symlink
│   ├── gitconfig.symlink.example
│   └── gitignore.symlink
├── grc
│   ├── conf.curl
│   └── grc.conf
├── homebrew
│   └── install.sh
├── osx
│   └── set-defaults.sh
├── readme.md
├── script
│   ├── bootstrap
│   └── install
├── system
│   └── env.zsh
├── vim
│   └── vimrc.symlink
└── zsh
    ├── aliases.zsh
    ├── completion.zsh
    ├── window.zsh
    └── zshrc.symlink
```

# Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```sh
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.
