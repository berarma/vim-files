vim-files
=========

My Vim config files. Mostly oriented to working with software projects using
git, web development (PHP/HTML/CSS/JS). Plugin management done with
[Plug](https://raw.githubusercontent.com/junegunn/vim-plug). Vim defaults are
preserved as much as possible.

I'm using Debian GNU/Linux 9.

## Installation

Install dependencies:

```
sudo apt install composer php-msgpack php-json
```

Clone this repository.

Run ```./install.sh``` to create links

Run ```vim -u setup.vim``` to setup vim plugins configuration.

## Linters

You need to install linters compatible with [ALE](https://github.com/w0rp/ale)
for the languages that you want.

### JSHint for Javascript

Install [JSHint](https://github.com/jshint/jshint) for JavaScript code checking:

```
npm install jshint
```

### HTML Tidy for HTML5

Install [HTML Tidy for HTML5](https://github.com/w3c/tidy-html5) for HTML5
syntax checking.

```
sudo apt install tidy
```

## Faster than grep

Install [Ack](http://beyondgrep.com/) or [Ag](http://betterthanack.com/) for
faster searches.

```
sudo apt install ack-grep silversearcher-ag
```

## matchit

On Debian, `matchit` must be manually enabled. Package `vim-addon-manager` must be installed for the following commands to work.

Enabling user-wide:

```
vim-addons install matchit
```

To enable system-wide:

```
vim-addons -w install matchit
```

