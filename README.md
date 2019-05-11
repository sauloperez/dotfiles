Installation
============

Prerequisites
-------------

* Git (2.0+ recommended)
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

### Neovim
For Neovim to work with all its configured plugins install Vim-plug is installed via the `setup` script as explained in https://github.com/junegunn/vim-plug

Stay Updated
------------

Run the sync again!

``` bash-session
$ rcup -v
```

Zsh
===

```shell
brew install zsh zsh-completions
```

Change your login shell to zsh by running `chsh -s /usr/local/bin/zsh` or System
Preferences -> Users & Groups -> Click the lock -> Right click your user ->
Advanced Options and paste `/usr/local/bin/zsh` in the login shell field.

oh my zsh
---------

When changed to zsh run:

```shell
curl -L http://install.ohmyz.sh | sh
```

Now we can install zsh-syntax-highlighting plugin. It tells you if a command is
valid before you hit the enter key.

To install run:

```shell
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

Lastly, lets install [z](https://github.com/rupa/z), a script that makes
navigating the file system much faster.

```shell
brew install z
```

Now sync to get the dotfiles' zshrc with `rcup -v` and `source ~/.zshrc` for its
configurations to take effect.

Vim
===

Installation
--------

First create the folders required in `.vimrc`:

```
mkdir ~/.vim/{backups,swaps,undo}
```

Then, set up [Vundle](https://github.com/gmarik/Vundle.vim) to manage vim plugins

`$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

and install plugins either running `:PluginInstall` from vim or install them from the command line with: `vim +PluginInstall +qall`

What follows is an overview of the vim setup. Sensible defaults for all the things!

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


Plugins
=======

Installed plugins and syntax files.

* Ack
* CSS-color
* CtrlP
* Gist
* Haml
* Indent Guides
* Jade
* Javascript
* Markdown
* Nerdcommenter
* Powerline
* Rails
* Rainbow Parenthesis
* Repeat
* Ruby
* Slim
* Surround


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
* bookmarklet


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
