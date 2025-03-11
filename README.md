# Pangebin-doc

```{note}
This document is hosted on Overleaf.
```

```{warning}
Do not clone this repository if you want to modify this document.
You modify it with:

* The Overleaf web interface
* The VSCode Overleaf remote extension `iamhyc.overleaf-workshop` (see sections below)
  * Contact `vepain` if you really want to use git
```

## Modifying remotly this document with VSCode

### Why?

* You can use `CTRL/CMD + SHIFT + F`
* You can use `LaTeX Workshop` extension
* you can benefit from your custom VSCode extensions

### How?

* Install VSCode extension `iamhyc.overleaf-workshop`
* Login with cookies: <https://github.com/iamhyc/overleaf-workshop#how-to-login-with-cookies>
* Open the project as a local sync copy: <https://github.com/iamhyc/Overleaf-Workshop/blob/master/docs/wiki.md#open-project-locally>

### Limitation

* You cannot create/upload a file other than a `.tex` file
  * You must use the web interface to upload the file

## Compiling the document from CLI

From the root (with [latexmk](https://mgeier.github.io/latexmk.html)):

```sh
latexmk  # to compile
latexmk -c  # to clean
```

Or manually compile with:

```sh
main=main
build_dir=build

# To compile:
mkdir $build_dir
lualatex --synctex=1 --shell-escape --interaction=nonstopmode --file-line-error --output-directory $build_dir $main
biber $build_dir/$main
lualatex --synctex=1 --shell-escape --interaction=nonstopmode --file-line-error --output-directory $build_dir $main
lualatex --synctex=1 --shell-escape --interaction=nonstopmode --file-line-error --output-directory $build_dir $main

# To clean:
rm -rf $build_dir
```
