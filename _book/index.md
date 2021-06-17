--- 
title: 'Making Sense of Data'
subtitle: "Getting it wrong, and getting it right"
author: "John Maindonald"
date: "2021-06-17"
site: bookdown::bookdown_site
output:
  bookdown::gitbook:
    toc_depth: 2
    split_by: none
    number-sections: true
    pandoc_args: NULL
  bookdown::pdf_book:
    keep_tex: yes
documentclass: book
classoption: b5paper
fontsize: 10pt
urlcolor: blue
linkcolor: red
bibliography: [book.bib, packages.bib, dataSense.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: "This is a minimal example of using the bookdown package to write a book. The output format for this example is bookdown::gitbook."
header-includes:
- \usepackage{amssymb}
- \usepackage{pifont}
- \usepackage{colortbl}
- \usepackage{xcolor}
- \usepackage{float}
---



# Preface {-}

> It ain't what you don't know that gets you into trouble.
> Its what you know for sure that just ain't so.
> [Advice attributed to Mark Twain]


Data do not stand on tneir own.  It has a context.  That context has
to be understood and to feed into the way that the data are used,
if meaningful conclusions are to be drawn.  This booklets aims to
identify some of the issues that arise in making sense of data, 
and to document common misunderstandings.

Using Kahneman's book "Thinking Fast and Slow"^[@kahneman_2013] as 
a starting point, we will note mental traps to which humans are 
prone, and provide examples from the media and from published work.  
The hope is that knowledge of the traps will help us to avoid them.
Kahneman identifies, as a useful way to think about the issues that 
arise when humans make judgments, two processes that he 
calls, respectively, System 1 (jumping) and System 2 (pondering). 
This is a simplification --- but does provide a helpful
starting point for discussing the psychology involved.

The questions that data and data analysis qre designed to answer can often be stated simply. This may encourage the layperson to believe that the answers are similarly simple. Often, they are not. Be prepared for unexpected subtleties. Always, think carefully how the data were collected,
and about how this may limit the conclusions that can be drawn from it.

There is brief attention to issues that arise from practices that have
grown up within some areas of laboratory science.  Concerns about reproducibility, especially in wet laboratory biology and in psychology, have in the past decade attracted extensive attention in the pages of
Nature, Science, the Economist, psychology journals, and elsewhere.
There are self-correcting processes that in the long run work to
set the record straight.  Better and more consistent attention to
independent checks that results can be replicated would work to avoid
much of the wasting of effect and time that can occur when later 
investigators find that the results on which they hoped to build are
flawed.



