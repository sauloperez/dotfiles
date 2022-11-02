## Table of Contents

- [Prerequisites](#prerequisites)
- [Install](#install)
  * [SSH key](#ssh-key)
  * [Go](#go)
  * [Neovim](#neovim)
  * [FZF](#fzf)
  * [Zsh](#zsh)
  * [Tmux](#tmux)
  * [Z](#z)
- [Mappings](#mappings)
  * [General](#general)
  * [Splits](#splits)
  * [Commands](#commands)
- [Shell](#shell)
- [Aliases](#aliases)
- [Scripts](#scripts)
- [Fonts](#fonts)
- [Git](#git)
- [NodeJS](#nodejs)
- [Keyboard](#keyboard)
  * [Ubuntu](#ubuntu)
  * [Emoji support](#emoji-support)
- [Cool utilities](#cool-utilities)
  * [sp](#sp)
- [Stay Updated](#stay-updated)
- [Troubleshooting](#troubleshooting)
  * [Getting Nvidia Quadro P1000 mobile to work](#getting-nvidia-quadro-p1000-mobile-to-work)
- [Pok3r mech keyboard](#pok3r-mech-keyboard)

## Prerequisites

* Git (2.0+ recommended)
* Neovim

It's worth enabling passwordless ssh access to the machine first and do the
setup through SSH.

```sh
ssh-copy-id <user>@<host>
```

## Packages

```sh
sudo apt install \
  git \
  ssh \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  build-essential
  tree \
  htop \
  xsel \
  tmux \
  fonts-firacode \
  rcm \
  zsh \
  jq \
  gawk
```

```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```

## Install

Dotfiles installion is handled by [thoughtbot's rcm](https://github.com/thoughtbot/rcm). A suite of tools for managing dotfiles directories. Check out whether everything will work fine:

``` bash-session
$ lsrc
```

Install your dotfiles symlinking them into your home directory:

``` bash-session
$ rcup -v
```

### SSH key

The ssh key is needed to authenticate everywhere and therefore it's better to
get it first otherwise, I won't be able to push to git repos, etc.

If I have access to another working machine, it's easier to copy the `~/.ssh` through `scp`.

Alternatively, I can get all key pairs from Lastpass.

For the record, I have to key pairs. One for my personal accounts and one for Tacto.

### Go

Go is required because multiple rc files refer to it. To install it head over to https://golang.org/doc/install and follow the steps.

After that, create its diretory structure as follows

```sh
$ mkdir -p ~/go/{bin,pkg,src}/
$ mkdir -p ~/go/src/gitlab.com/sauloperez
```

If you have any doubts the [workspace chapter](https://www.youtube.com/watch?v=SqrbIlUwR0U&t=133s) of the Go crash course I recently watched is perfect.

### Neovim

For Neovim to work with all its configured plugins install Vim-plug is installed via the `setup` script as explained in https://github.com/junegunn/vim-plug.

To install the plugins listed in `vimrc` either run `:PluginInstall` from neovim or install them from the command line with: `nvim +PluginInstall +qall`

Lastly, to make Neovim pick the `vimrc` you must have a file `~/.config/nvim/init.vim` with the following contents:

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

This ensures this old configuration is read. It's about time to move it to
adhere to Neovim's defaults though.

All this is described in https://neovim.io/doc/user/nvim.html#nvim-from-vim.

### FZF

[FZF](https://github.com/junegunn/fzf.vim) is an awesome fuzzy-finder I use from the terminal an as vim plugin. Make sure you read https://github.com/junegunn/fzf/blob/master/README-VIM.md as well. You should also read the vim plugin's README.

### Zsh

Zsh and Oh My Zsh are also installed by the `setup` script.

Change your login shell to zsh by running `chsh -s /usr/local/bin/zsh` or System
Preferences -> Users & Groups -> Click the lock -> Right click your user ->
Advanced Options and paste `/usr/local/bin/zsh` in the login shell field.

You may end up with a `~/.bashrc` because Ubuntu comes with it. If you have one,
just delete it once Zsh is set up.

### Tmux

Beyond installing Tmux we also need to install [tpm](https://github.com/tmux-plugins/tpm), the package manager.

### Z

[Z](https://github.com/rupa/z) is an awesome utility to move around the file
system based on "frecency" which makes me move much faster.

By typing `a fo` I cd to `~/dev/openfoodnetwork`.

There is no manual step required to install since I use its oh my zsh plugin.

## Mappings

Reference to vim mappings.


### General

* `,a=` Tabularize on assignment (=)
* `,a=>` Tabularize on hash rocket keys (=>)
* `,a:` Tabularize on hash/object/dict keys (:)
* `,a,` Tabularize on comma (,)
* `,c` Toggle invisibles.
* `,ls` Show buffers (same as `:buffers`).
* `,p` Toggle paste mode.
* `,qs` Toggle search highlight.
* `,qq` Close Quickfix window (think Ack.vim).
* `,rp` Toggle Rainbow Parenthesis.
* `,ss` Strip all trailing whitespace in buffer.
* `,W` Sudo write!
* `Y` Yank from cursor to end of line (same as `y$`).
* `,*` Replace word under cursor.
* `,]` Indent current block.
* `,[` Outdent current block.
* `,⏎` Insert newline.
* `'` Actually calls <code>`</code> for better mark jumping (line + column).
* `J` Join lines and restore cursor position.


### Splits

* `+` Increase split size.
* `-` Decrease split size.
* `^j` Go to split below.
* `^k` Go to split above.
* `^h` Go to split left.
* `^l` Go to split right.


### Commands

* `:W` Alias to `:w` because I'm always typing it.
* `:R` Get the output of shell commands.


## Shell

Most of the shell junk is setup to work in bash. Bash users should
see [.bash_profile](https://github.com/sauloperez/dotfiles/blob/master/.bash_profile)
and [.bash_prompt](https://github.com/sauloperez/dotfiles/blob/master/.bash_prompt).


## Aliases

Check out [.aliases](https://github.com/sauloperez/dotfiles/blob/master/.aliases)


## Scripts

Additional useful scripts bundled:

* ack
* git-show-merges
* git-wtf

And the two scripts needed to play Pharaoh:

* setup-pharaoh
* boot-pharaoh

## Fonts

[Fira Code](https://github.com/tonsky/FiraCode) is an awesome font perfectly
suited for my console usage.

To get symbol support from Kitty you just need to install the Symbols Nerd
Font. Killy will pick it up automatically. More details:
https://sw.kovidgoyal.net/kitty/faq/#kitty-is-not-able-to-use-my-favorite-font.

## Git

I've included some handy git script additions as well as configution changes.
Have a look at
[.gitconfig](https://github.com/sauloperez/dotfiles/blob/master/.gitconfig) to see
various aliases and settings.

Additional scripts (see [.scripts](https://github.com/sauloperez/dotfiles/tree/master/.scripts/) directory for source):

* git-show-merges
* git-wtf

## NodeJS

Node is needed to run things like Coopdevs' [slides_template](https://github.com/coopdevs/slides_template).

For that is better to install Nodenv so multiple versions can be installed.
Follow its installation steps at https://github.com/nodenv/nodenv#installation.

## Keyboard

To map Ctrl key to Caps lock:

### Ubuntu

```shell
$ sudo apt-get install gnome-tweak-tool
gnome-tweak-tool > Keyboard & Mouse > Additional Layout Options > Ctrl key position
```

## Cool utilities

### sp

[sp](https://gist.github.com/wandernauta/6800547) is a Spotify cli client that
allows you to play, pause, get the current song, etc. from the command line.
Just what I was looking for. Install it as follows

```sh
$ sudo curl -fLo /usr/local/bin/sp \
    https://gist.githubusercontent.com/wandernauta/6800547/raw/2c2ad0f3849b1b1cd1116b80718d986f1c1e7966/sp
$ sudo chmod ag+x /usr/local/bin/sp
```

Now, with the Spotify app open you can do `sp current` or `sp play`. Awesome!

## Stay Updated

Run the sync again!

``` bash-session
$ rcup -v
```

## Pok3r mech keyboard

You can find how to program the pok3r in [[guide] How-to: Program your Pok3r -- Programming Layers and Dipswitch 4](https://www.reddit.com/r/MechanicalKeyboards/comments/35uy60/guide_howto_program_your_pok3r_programming_layers/) from the MechanicalKeyboards subreddit.

## Troubleshooting

### Getting Nvidia Quadro P1000 mobile to work

I couldn't an external monitor connected to my brand new Thinkpad P1 through HDMI until I updated the propietary Nvidia drivers and disabled Kernel mode setting on the Nvidia kernel module.

Keep in mind the HDMI port is wired to the Nvidia graphics card so you'll first have to switch to it either using `Nvidia X Server Settings` or the `prime-select` command line tool. I guess the latter gets installed with the `nvidia-prime` package but I haven't checked. Do not forget to log out and log in again for the changes to take effect. 

In order to get the latest Nvidia drivers available I added the `graphics-drivers` PPA repository as follows

```
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
```

Because of this, now `ubuntu-drivers devices` (you can find a nice explanation of this command [here](https://askubuntu.com/a/543329)) listed a couple more options

```
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
modalias : pci:v000010DEd00001CBBsv000017AAsd00002267bc03sc00i00
vendor   : NVIDIA Corporation
model    : GP107GLM [Quadro P1000 Mobile]
driver   : nvidia-driver-390 - distro non-free
driver   : nvidia-driver-418 - distro non-free
driver   : nvidia-driver-396 - third-party free
driver   : nvidia-driver-415 - third-party free
driver   : nvidia-driver-430 - third-party free recommended
driver   : xserver-xorg-video-nouveau - distro free builtin
```

Particularly `nvidia-driver-430` did not show up before. Unfortunately, the command `sudo apt install nvidia-driver-430` reported an unmet depedencies error so I went the GUI way. You can do so by opening the "Software & Updates" app, choosing the "Additional Drivers" tab. Then, choose "nvidia-driver-430" and "Apply Changes". This took a while.

But it turns out this wasn't enough, even after restarting the system. Finally, I found the solution in https://www.dell.com/community/Precision-Mobile-Workstations/External-Monitor-not-working-Ubuntu-nvidia/m-p/7286631#M1634. Apparently the problem is with the [kernel mode setting](https://wiki.archlinux.org/index.php/Kernel_mode_setting#Disabling_modesetting), which needs to be disabled to work.

Editing the file `/lib/modprobe.d/nvidia-kms.conf` to `options nvidia-drm modeset=0` fixed the problem after a reboot 🎉️.

### Recovering Grub after a Lenovo's firmware upgrade

After blindly applying the last firmware upgrade Grub was gone and there was no way to boot anything other than Windows 10. Disabling secure boot and enabling legacy boot didn't help either.

First of all, https://unix.stackexchange.com/a/475245 shed some light on this giving some clues that led me to the solution. First kind of understood what [UEFI is about](https://www.howtogeek.com/56958/HTG-EXPLAINS-HOW-UEFI-WILL-REPLACE-THE-BIOS/) and what a [EFI system partition is](https://wiki.archlinux.org/index.php/EFI_system_partition), then I run

```
bcdedit /set {bootmgr} path \EFI\ubuntu\grubx64.efi
```

from Window's command prompt as admin, as detailed in https://itsfoss.com/no-grub-windows-linux/. Then reading [BCD System Store Settings for UEFI](BCD System Store Settings for UEFI) from Microsoft's Hardware Dev Center made me understand we basically told the Windows Boot Manager that it should boot grub's EFI application instead.
