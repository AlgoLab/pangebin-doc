@default_files = ('main.tex');
$out_dir = 'build';
$bibtex_use = 2;
$pdf_mode = 1; # tex -> pdf
$pdflatex = 'lualatex --synctex=1 --interaction=nonstopmode --file-line-error %O %S';
