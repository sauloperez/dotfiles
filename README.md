Installation
============

Prerequisites
-------------

* Git (2.0+ recommended)
* Go
* Neovim
* [Homebrew](http://mxcl.github.com/homebrew/) (OS X only)

Install
------------

Dotfiles installion is handled by [thoughtbot's rcm](https://github.com/thoughtbot/rcm). A suite of tools for managing dotfiles directories. Check out whether everything will work fine:

``` bash-session
$ lsrc
```

Install your dotfiles symlinking them into your home directory:

``` bash-session
$ rcup -v
```

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

Zsh
===

Zsh and Oh My Zsh are also installed by the `setup` script.

Change your login shell to zsh by running `chsh -s /usr/local/bin/zsh` or System
Preferences -> Users & Groups -> Click the lock -> Right click your user ->
Advanced Options and paste `/usr/local/bin/zsh` in the login shell field.

Mappings
--------

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


Commands
========

* `:W` Alias to `:w` because I'm always typing it.
* `:R` Get the output of shell commands.


Shell
=====

Most of the shell junk is setup to work in bash. Bash users should
see [.bash_profile](https://github.com/sauloperez/dotfiles/blob/master/.bash_profile)
and [.bash_prompt](https://github.com/sauloperez/dotfiles/blob/master/.bash_prompt).


Aliases
-------

Check out [.aliases](https://github.com/sauloperez/dotfiles/blob/master/.aliases)


Scripts
-------

Additional useful scripts bundled:

* ack
* git-show-merges
* git-wtf

And the two scripts needed to play Pharaoh:

* setup-pharaoh
* boot-pharaoh

Fonts
=====

[Fira Code](https://github.com/tonsky/FiraCode) is an awesome font perfectly
suited for my console usage. If you ran the `setup` script you got it installed
already. To use it the Gnome terminal just open its preferences and create a new
profile called "fira code", selecting said font at 12pt. Don't forget to set it
as the default profile.

The ligature support in Ubuntu requires some tweaking that I haven't figured out
yet. The repo's wiki page will surely tell how.

Git
===

I've included some handy git script additions as well as configution changes.
Have a look at
[.gitconfig](https://github.com/sauloperez/dotfiles/blob/master/.gitconfig) to see
various aliases and settings.

Additional scripts (see [.scripts](https://github.com/sauloperez/dotfiles/tree/master/.scripts/) directory for source):

* git-show-merges
* git-wtf

Keyboard
========

To map Ctrl key to Caps lock:

### Ubuntu

```shell
$ sudo apt-get install gnome-tweak-tool
gnome-tweak-tool > Typing > Ctrl key position
```

Stay Updated
------------

Run the sync again!

``` bash-session
$ rcup -v
```
