# Effective use of graphs 

## General principles

* Focus the eye on features that are important
* Avoid distracting features
* Lines that are intended to attract attention can be
thickened
* Where points should be the focus, make them large & dark
    + It often makes sense to de-emphasize the axes.
* If points are numerous and there is substantial overlap,
  use open symbols, and/or use symbols that have some
  degree of transparency.
* Different choices of color palettes are effective for different purposes.
* Bear in mind that the eye has difficulty in focusing
simultaneously on widely separated colors that are close
together on the same graph.

## Banking --- the importance of aspect ratio

Patterns of change on the horizontal scale that it is
important to identify should bank at an angle of roughly 45^o^
above or below the horizontal.  Angles in
the approximate range 20^o^ to 70^o^ may be satisfactory,
and the aspect ratio should be chosen accordingly.

\enlargethispage{21pt}




```r
par(mgp=c(2,.5,0))
plot((1:50)*0.92, sin((1:50)*0.92), xlab="", ylab="", fg='gray')
mtext(side=3, at=0.75, "A: Pattern is hidden to view", adj=0, cex=1.25)
plot((1:50)*0.92, sin((1:50)*0.92), xlab="", ylab="", asp=2)
mtext(side=3, at=0.75, "B: Pattern is now obvious", adj=0, cex=1.25)
```

<div class="figure">
<img src="03-graphs_files/figure-epub3/Banking-1.png" alt="The same data are used for both graphs.  The pattern that is not
obvious in Panel A is very obvious in Panel B" width="48%" /><img src="03-graphs_files/figure-epub3/Banking-2.png" alt="The same data are used for both graphs.  The pattern that is not
obvious in Panel A is very obvious in Panel B" width="48%" />
<p class="caption">(\#fig:Banking)The same data are used for both graphs.  The pattern that is not
obvious in Panel A is very obvious in Panel B</p>
</div>

## Varying time intervals --- show rates, not counts




```r
par(mar=c(4.1,3.1,2.1,3.1),mgp=c(2.25,0.5,0))
n2 <- c(1,1,4,12,15,29,27,11)
n1 <- c(1,1,4,12,15,29,27,39)
plot(1:8, n2, xaxt="n", xlab="", ylim=range(n1),
     ylab="Number of Nobel prizes", type="l", fg='gray')
axis(1, at=1:8, labels=paste0(seq(from=1901, to=1971, by=10),"-"), cex.axis=0.9, gap.axis=0.15)
axis(1, at=1:8, labels=paste0(c(seq(from=1910, to=1970, by=10),1974)),
     line=0.8, lty=0, cex.axis=0.9)
axis(1, at=1:7, labels=FALSE)
mtext(side=3, line=0.5, at=0.5, "Total prizes (black line)", adj=0, cex=1.25)
mtext(side=3, line=0.5, at=8.5, "Average prizes per year (blue dots)", col='blue', adj=1, cex=1.25)
points(1:8, n1, lwd=8, col=adjustcolor('blue', alpha=0.5), pch=1)
lines(7:8, tail(n1,2), lty=2,lwd=2, col=adjustcolor('blue', alpha=0.5))
axis(4, at=(0:4)*10, labels=paste(0:4), col.ticks=adjustcolor('blue', alpha=0.5), col.axis='blue')
mtext(side=4, line=1.8, "Nobel prizes per year", col='blue')
```

<div class="figure">
<img src="03-graphs_files/figure-epub3/Nobel-1.png" alt="The black line shows numbers of US Nobel prizes, for given time intervals.
The blue dots show average number per year, as indicated by the axis on the right." width="80%" />
<p class="caption">(\#fig:Nobel)The black line shows numbers of US Nobel prizes, for given time intervals.
The blue dots show average number per year, as indicated by the axis on the right.</p>
</div>

A graph that was essentially the black segmented line in Figure
\@ref(fig:Nobel) appeared in 
@national1975science "Science Indicators, 1974". The segmented line gives
a highly misleading impression for the four years 1971-1974, as
opposed to earlier points, where numbers are totals over decades.
It joins up a final point that is a different measure from earlier
points.  

A proper comparison between the number of Nobel prizes
in the earlier decades and the number in the four-year
period 1971-1974 adjusts for the length of time (ten years
versus four years) to which the count relates.  The blue
dots, and the axis on the right, fairly represent change
over time.

The same principle applies for intervals of measures
other than time --- for example of length or volume.

\enlargethispage{13pt}

## Helpful web links are: 

* Good & bad graphs (Murrell, lecture notes)^[<https://www.stat.auckland.ac.nz/~ihaka/120/Lectures/lecture03.pdf>]
* A short tour of bad graphs (Schwartz)^[<www.stat.sfu.ca/~cschwarz/Stat-650/Notes/PDF/ChapterBadgraphs.pdf>]
* Misleading graphs^[<www.statisticshowto.com/misleading-graphs/>]
    + Color choices^[<www.stonesc.com/pubs/Expert%20Color%20Choices.pdf>]
    + Color Brewer^[<www.statisticshowto.com/misleading-graphs/>]
