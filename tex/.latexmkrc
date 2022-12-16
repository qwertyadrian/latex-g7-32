$pdflatex = "xelatex -synctex=1 -interaction=nonstopmode -shell-escape %O %S";
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;
$bibtex_use = 2;
@default_files = ("rpz");

@cus_dep_list = (@cus_dep_list, "nlo nls 0 makenomenclature");
sub makenomenclature {
   system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls"); }
@generated_exts = (@generated_exts, 'nlo');
