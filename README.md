# latexcolors.sty

These are the color definitions from `latexcolor.com` for the LaTeX package
`xcolor`. To generate the files, run

```
latex latexcolors.ins
pdflatex latexcolors.dtx
pdflatex latexcolors.dtx
makeindex -s gglo.ist -o latexcolors.gls latexcolors.glo
pdflatex latexcolors.dtx
pdflatex latexcolors.dtx
```

this produces
* the `.sty` file
* the documentation PDF file
