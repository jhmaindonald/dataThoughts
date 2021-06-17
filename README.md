# This book is based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown). 

Detailed instructions for the approach used for building a book are 
available from https://bookdown.org/yihui/bookdown/build-the-book.html.
See also https://bookdown.org/yihui/bookdown-demo/.

# DataSense
Files are for a booklet that I have titled "Making Sense of Data --
Common fallacies and misunderstandings".  It brings together, and
updates and revises, notes for a Victoria University of Wellington 
Continuing Education course that I presented in 2017.  The earlier
brief notes have been supplemented with explanatory text, with the
aim of making it a self-contained document that can stand on its 
own. New content and references have been added.

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
6) For PDF output, see the requirements noted at:
https://bookdown.org/yihui/rmarkdown/installation.html#installation
See also
https://bookdown.org/yihui/rmarkdown/pdf-document.html 
7) For html output, specify `split_by: none` to generate a single
html file.


