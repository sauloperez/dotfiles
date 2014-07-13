Installation
============

Prerequisites
-------------

* Git (1.8+ recommended)
* Vim (7.3+ recommended)
* Tree
* Pygments
* xmllint

Optional, but recommended:

* [rbenv](http://rbenv.org) or [RVM](http://rvm.beginrescueend.com/)
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

Stay Updated
------------

Run the sync again!

``` bash-session
$ rcup -v
```


Vim
===

Overview of the vim setup. Sensible defaults for all the things!


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

Some handy aliases for hard to type things that I use often:

* `>>` to `→`
* `<<` to `←`
* `^^` to `↑`
* `VV` to `↓`
* `aa` to `λ`

As well `↑`, `↓`, `⏎`, and `⎋` may be used in completions menus. `<PageUp>` and `<PageDown>` work in both insert and command mode.


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


iPad
----

Rudimentary support for vim on the iPad has been added via usage of the
`xterm-ipad` `$TERM` value. In this mode `<Tab>` is `<Esc>` and `,<Tab>` is
`<Tab>`.


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

A modified version of Menlo is available in `.fonts` for use with [powerline.vim](https://github.com/Lokaltog/vim-powerline/).


Git
===

I've included some handy git script additions as well as configution changes.
Have a look at
[.gitconfig](https://github.com/sauloperez/dotfiles/blob/master/.gitconfig) to see
various aliases and settings.

Additional scripts (see [.scripts](https://github.com/sauloperez/dotfiles/tree/master/.scripts/) directory for source):

* git-publish-branch
* git-rank-contributors
* git-rbranch
* git-review
* git-show-merges
* git-wtf


Configurations
==============

Sensible configurations exist for:

* Ack
* Awesome Print
* RubyGems
* Git
* IRB
* TMUX
* Vim
* GVim / MacVim

...and more!

