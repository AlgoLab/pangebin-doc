# Overleaf copy of pangebin V2

Why? Because Mattia's premium Overleaf is over.

## How to compile this document?

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
