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




# Notes for update



curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 -


sudo apt install fonts-firacode

```
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "JetBrains Mono Bold Nerd Font Complete Mono Windows Compatible.ttf" https://github.com/pockata/dotfiles/raw/master/fonts/.fonts/JetbrainsMonoNerd/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf

cd ~/.local/share/fonts && curl -fLo "JetBrains Mono Italic Nerd Font Complete Mono Windows Compatible.ttf"  https://github.com/pockata/dotfiles/raw/master/fonts/.fonts/JetbrainsMonoNerd/JetBrains%20Mono%20Italic%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf

cd ~/.local/share/fonts && curl -fLo "JetBrains Mono Bold Italic Nerd Font Complete Mono Windows Compatible.ttf" https://github.com/pockata/dotfiles/raw/master/fonts/.fonts/JetbrainsMonoNerd/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf

cd ~/.local/share/fonts && curl -fLo "JetBrains Mono Regular Nerd Font Complete Windows Compatible.ttf" https://github.com/pockata/dotfiles/raw/master/fonts/.fonts/JetbrainsMonoNerd/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf
fc-cache -f -v
```

https://starship.rs/

Extensions 
https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc

Configure default Terminal app
Then open Terminal app :

Terminal menu > Preferences > Profile > your profile (Basic by default) > Text > Font (choose the Jetbrains font)

1  cat ~/.zshrc
    2  cp ~/.zshrc ~/.zshrc.old
    3  vi ~/.zshrc
    4  code ~/.zshrc
    5  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.zsh/fast-syntax-highlighting
    6  source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
    7  fast-theme -l
    8  fast-theme free
    9  sudo apt install zsh-autosuggestions
   10  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
   11  sudo apt install fzf
   12  mkdir /tmp/LS_COLORS && curl -L https://api.github.com/repos/trapd00r/LS_COLORS/tarball/master | tar xzf - --directory=/tmp/LS_COLORS --strip=1\n( cd /tmp/LS_COLORS && make install )


curl -sS https://starship.rs/install.sh | sh


.zshrc
```bash


################################################################################
#Autocompletions and other ZSH config
################################################################################

#Enables history saving
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt share_history        #share history between multiple instances of zsh

################################################################################
#ZSH Plugins
################################################################################

#Enable syntax highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

#Enable Fish-like autosuggestions based on history (press right arrow to accept the suggestion, like in GMail)
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enables fzf
if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi


#Enable differenciated colors per file type (ls)

if [[ -f /usr/local/google/home/julienbc/.local/share/lscolors.sh ]]; then
  . "/usr/local/google/home/julienbc/.local/share/lscolors.sh"
fi

################################################################################
#Aliases
################################################################################
alias ls="ls --color"
alias la="ls -la"
alias ll="ls -lrt"
alias less="less -R"


################################################################################
#Functions
################################################################################



export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"
```

starship.toml
```toml
# Use custom format
format = """
$username\
$hostname\
$directory\
$gcloud\
${custom.firebase}\
$kubernetes\
$docker_context\
$git_branch\
$git_state\
$git_status\
$git_metrics\
$direnv\
$fill\
$nodejs\
$python\
$c\
$golang\
$dart\
$java\
$dotnet\
$rlang\
$ruby\
$rust\
$helm\
$perl\
$php\
$nix_shell\
$opa\
$package\
$terraform\
$container\
$battery\
$cmd_duration $jobs \
$time\
$line_break\
$os\
$shell\
$sudo\
$status\
$character"""

# format = '$all'

# Inserts a blank line between shell prompts
add_newline = true

palette = "catppuccin_mocha"

[character]
success_symbol = '[➜](bold green) '
error_symbol = '[✗](bold red) '

[status]
style = 'bg:blue'
symbol = '🔴 '
# success_symbol = '🟢 SUCCESS'
format = '[\[$symbol$common_meaning$signal_name$maybe_int\]]($style) '
map_symbol = true
disabled = false

[nodejs]
symbol = " "
format = "[$symbol($version  )]($style)"

[python]
symbol = "󰌠 "
format = "[$symbol($version  )]($style)"

[golang]
symbol = " "
# format = "[$symbol($version  )](bold cyan)"
format = "[$symbol($version )($mod_version )]($style)"

[fill]
symbol = " "

[directory]
style = "blue"
read_only = "🔒"
truncation_length = 4
truncate_to_repo = true

[gcloud]
symbol = "󱇶 "
format = 'logged on to [$symbol$account(@$domain)(\($project\))]($style) '

[jobs]
symbol = ''
style = 'red'
# number_threshold = 1
# format = '[$symbol]($style)'

[terraform]
format = '[󱁢 $version$workspace]($style ) '

[battery]
full_symbol = '🔋 '
charging_symbol = '⚡️ '

[git_branch]
truncation_length = 4
truncation_symbol = "…"

[[battery.display]] # 'bold red' style and discharging_symbol when capacity is between 0% and 10%
threshold = 10
style = 'bold red'

[[battery.display]]
threshold = 30
style = 'bold yellow'
discharging_symbol = '💀 '

[kubernetes]
format = 'on [⛵ ($user on )($cluster in )$context \($namespace\)](dimmed green) '
disabled = false
contexts = [
  { context_pattern = "dev.local.cluster.k8s", style = "green", symbol = "💔 " },
]

[time]
disabled = false
format = '[\[󱑂 $time \]]($style) '
time_format = '%T'
utc_time_offset = '-5'

[shell]
fish_indicator = '󰈺 '
zsh_indicator = ''
powershell_indicator = '_'
unknown_indicator = 'mystery shell'
style = 'cyan bold'
disabled = false

[cmd_duration]
min_time = 500

[os]
format = "[($symbol )]($style)"
style = "bold blue"
disabled = false

[custom.readme]
detect_files = ['README.md', 'README', 'readme.md']
# detect_folders = ['']
# detect_extensions = ['']
style = "red"
symbol = "R"
command = "wc -l readme* awk "
format = "[$symbol $output]($style)"

[custom.firebase]
symbol = "󰥧"
detect_files = ['firebase.json', '.firebaserc']
command = "firebase --version"
style = "#FFC400"
format = "[using $symbol Firebase]($style)"
# format = "[$symbol $output]($style)"

[palettes.catppuccin_mocha]
rosewater = "#f5e0dc"
flamingo = "#f2cdcd"
pink = "#f5c2e7"
mauve = "#cba6f7"
red = "#f38ba8"
maroon = "#eba0ac"
peach = "#fab387"
yellow = "#f9e2af"
green = "#a6e3a1"
teal = "#94e2d5"
sky = "#89dceb"
sapphire = "#74c7ec"
blue = "#89b4fa"
lavender = "#b4befe"
text = "#cdd6f4"
subtext1 = "#bac2de"
subtext0 = "#a6adc8"
overlay2 = "#9399b2"
overlay1 = "#7f849c"
overlay0 = "#6c7086"
surface2 = "#585b70"
surface1 = "#45475a"
surface0 = "#313244"
base = "#1e1e2e"
mantle = "#181825"
crust = "#11111b"

## Taken from https://starship.rs/presets/nerd-font
[aws]
symbol = "  "

[buf]
symbol = " "

[c]
symbol = " "

[conda]
symbol = " "

[crystal]
symbol = " "

[dart]
symbol = " "

[docker_context]
symbol = " "

[elixir]
symbol = " "

[elm]
symbol = " "

[fennel]
symbol = " "

[fossil_branch]
symbol = " "

[git_commit]
tag_symbol = '  '


[guix_shell]
symbol = " "

[haskell]
symbol = " "

[haxe]
symbol = " "

[hg_branch]
symbol = " "

[hostname]
ssh_symbol = " "

[java]
symbol = " "

[julia]
symbol = " "

[kotlin]
symbol = " "

[lua]
symbol = " "

[memory_usage]
symbol = "󰍛 "

[meson]
symbol = "󰔷 "

[nim]
symbol = "󰆥 "

[nix_shell]
symbol = " "


[ocaml]
symbol = " "

[os.symbols]
Alpaquita = " "
Alpine = " "
AlmaLinux = " "
Amazon = " "
Android = " "
Arch = " "
Artix = " "
CentOS = " "
Debian = " "
DragonFly = " "
Emscripten = " "
EndeavourOS = " "
Fedora = " "
FreeBSD = " "
Garuda = "󰛓 "
Gentoo = " "
HardenedBSD = "󰞌 "
Illumos = "󰈸 "
Kali = " "
Linux = " "
Mabox = " "
Macos = " "
Manjaro = " "
Mariner = " "
MidnightBSD = " "
Mint = " "
NetBSD = " "
NixOS = " "
OpenBSD = "󰈺 "
openSUSE = " "
OracleLinux = "󰌷 "
Pop = " "
Raspbian = " "
Redhat = " "
RedHatEnterprise = " "
RockyLinux = " "
Redox = "󰀘 "
Solus = "󰠳 "
SUSE = " "
Ubuntu = " "
Unknown = " "
Void = " "
Windows = "󰍲 "

[package]
symbol = "󰏗 "

[perl]
symbol = " "

[php]
symbol = " "

[pijul_channel]
symbol = " "

[rlang]
symbol = "󰟔 "

[ruby]
symbol = " "

[rust]
symbol = "󱘗 "

[scala]
symbol = " "

[swift]
symbol = " "

[zig]
symbol = " "

[gradle]
symbol = " "
```