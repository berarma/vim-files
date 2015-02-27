vim-files
=========

My Vim config files. Mostly oriented to working with software projects using
git, web development (PHP/HTML/CSS/JS), and Java. Plugin management done with
[pathogen.vim](https://github.com/tpope/vim-pathogen). Vim defaults are
preserved as much as possible.

## JSHint

Install [JSHint](https://github.com/jshint/jshint) for JavaScript code checking:

```
npm install jshint
```

## HTML Tidy for HTML5

Install [HTML Tidy for HTML5](https://github.com/w3c/tidy-html5) for HTML5
syntax checking.

## Faster than grep

Install [Ack](http://beyondgrep.com/) or [Ag](http://betterthanack.com/) for
faster searches.

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

