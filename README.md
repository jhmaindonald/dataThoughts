# This book is based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown). 

Detailed instructions for the approach used for building a book are 
available from https://bookdown.org/yihui/bookdown/build-the-book.html.
See also https://bookdown.org/yihui/bookdown-demo/.

# DataSense
Files are for a booklet that I have titled "The Skeptical Data Analyst
Think again — examples that inform and educate".  It brings together, 
and updates and revises, notes for a Victoria University of Wellington 
2017 Continuing Education cours.  The earlier brief notes have been
supplemented with explanatory text, and further examples added, with 
the aim of creating self-contained document that can stand on its 
own. 

# Setup required, for processing the several chapters

The normal way to get started with R and RStudio is:  
1)  Download and install R from, e.g., https://cran.stat.auckland.ac.nz/
or http://cran.ms.unimelb.edu.au/  
     + Usually it is just a matter of clicking on the downloaded 
     file and following instructions.  
     + [Installation using brew can  lead to later problems, 
     and is not recommended.]  
2) Use of the RStudio Integrated Development Environment is recommended.
Download RStudio Desktop from
 https://www.rstudio.com/products/rstudio/download/
Click on the downloaded file and follow instructions.  
3) Install R packages knitr, bookdown, rmarkdown, ggplot2, gridExtra,
histdata, mgcv, lattice, xtable GGally, latticeExtra, car, MASS, DAAG,
GDAdata, corrplot.  This can be done either from the R command 
line or from the RStudio GUI.  You will be prompted to install 
various dependencies as installation proceeds.  Compiled versions
(which may not always be the most recent version) should in all 
cases be all you require.
    + If a needed package has been missed, this will become obvious
when you try to process the Rmd file. 
4) The setup for the document is specified in the YAML header in
the file **index.Rmd**.  Note also the files **_bookdown.yml**
and **_output.yml**, which add some further setup commands that
could alternatively be placed in the file **index.Rmd**.
The setting `new_session: yes` has the consequence that chapters 
are processed independently in what is called the "Knit and Merge" 
(K-M) approach, as opposed to "Merge and Knit" (M-K).
5) Click on `knit` to preview an individual chapter, or to
preview the output from **index.Rmd**.  Click on the menu
item `Build`, and then on `Build Book` to build the whole book.
    + The html file(s), and the pdf file, appear in the directory **_book**.
6) The YAML file **_bookdown.yml** lists in order, against the 
entry `yml_files`, the R markdown (.Rmd) files that are the 
source files that are processed to form the separate items 
(frontmatter, chapters, endmatter items) that, make up the
book.  Note the YAML entry `before_chapter_script: eachChap.R`,
which lists an R script that is to be run before the Rmd file
for each chapter is processed.
7) The YAML file **_output.yml** specifies the several formats
of output file that are required.  For PDF output, this includes
information about table of contents (toc), toc depth, the latex
engine (e.g., xelatex rather than tinytex), the graphics device,
and so on.  Under `includes:`, note `in_header: preamble.tex`.
This specifies latex file header packages, etc.
8) For PDF output, see the requirements noted at:
https://bookdown.org/yihui/rmarkdown/installation.html#installation
See also
https://bookdown.org/yihui/rmarkdown/pdf-document.html 
9) For html output, specify `split_by: none` to generate a single
html file.
10) The directory **_book/work/** holds the files **tmat4.txt**
and termFunIndex.Rmd that are used in generating the index file
**book-index.ind**.
    + In **tmat4.txt** each line is i) a row number ii) an index
    entry (the syntax `a! b` identifies entry `a` with subitem `b`)
    iii) one or two words which, if found on a page, will generate
    that entry iv) a further one or two words which (if not both NA)
    will be used to that entry.
    + See further, below, for details of how to use this code.
    
If **~/_notes/dataThoughts/book-index.ind** has no entries, enter,
from the Unix command line (this for Mac; Windows?)
$ cp ~/_notes/dataThoughts/_book/work/book-index.ind \ ~/_notes/dataThoughts/book-index.ind

To generate a new index file, proceed thus:

* Enter, from the Unix command line in the **_book/work/** subdirectory
$ pdftotext -f 11 -l 102 -layout -eol unix\
 ../dataSense-book.pdf dataSense-book.txt
If necessary, change `-l 96` to exclude the existing index.
* Open the file **termFunIndex.Rmd**, from the **_book/work/**
subdirectory, in RStudio.
* Run the code chunk `termFuns` that starts at line 14 (Position
the cursor within the chunk, and press Cmd/Shift/Enter).  This
loads the functions 'locateTerm` and `makeTermIndex `.
* Run the code chunk `mkind` that starts at line 144. 
    + If you run it using Cmd/Shift/Enter, it will be run as if
    in the **_book/work/** subdirectory, which is the 
    subdirectory from which you opened the *termFunIndex.Rmd**
    file.
    + If you want to run it from the command line, note that
    you will then (unless you change directories) be running it 
    from the **~/_notes/dataThoughts** directory, and you have 
    to adjust the file paths accordingly.


