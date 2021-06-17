# Weighting effects, & the Yule-Simpson Paradox {#sec:yule1}



## Deaths from Covid-19 --- between country comparisons

United States data for the 13 months up to 31 January 2021 shows
a stark difference in death rates, for those in younger as 
compared with those in older age groups, as shown in Figure 
\@ref(fig:riskByAge).


```r
cap_props <- paste0("United States reported deaths per 100 from Covid-19
(and, for comparison, deaths per 100), for the time period from ",
wkStartEnd[1], " to ", wkStartEnd[2], ". The total number
reported was ", sum(USdeadpop1yr$covdeaths),".")
fromTo <- format(UScausesByCats[1,2:3],"%b %d %Y")
```

<div class="figure">
<img src="07-weighting_files/figure-epub3/riskByAge-1.png" alt="Proportions who died, from Covid-19, and in total" width="50%" />
<p class="caption">(\#fig:riskByAge)Proportions who died, from Covid-19, and in total</p>
</div>

It is immediately obvious that more deaths are to expected, assuming a similar
breakdown by age, in countries where there are more old people. Thus, the
death rates per 1000 for Covid-19, for under age 65 as opposed to age $>=$ 65,
were:


```
##  <65 >=65 
## 0.28 6.30
```

Now observe how these rates transfer across to countries with a different population
structure.  

```
##                                US Italy Kenya
## Percentage 65 or more        16.3  23.3   2.5
## Expected deaths per 100,000 126.7 168.5  43.5
## Reported deaths per 100,000 126.7 146.0   3.3
```
Italy has a higher proportion of older people, leading to a higher 
expected death-rate.  Kenya has a much lower proportion, and a lower 
expected overall death-rate.  Other totals, e.g., for infection rates 
or hospital admissions, while still impacted by age structure, were not
impacted to the same extent.  A table on the US Center for Disease 
Control web page [Hospitalization and Death by Age] (https://www.cdc.gov/coronavirus/2019-ncov/covid-data/investigations-discovery/hospitalization-death-by-age.html)
shows how, in the US, hospitalization and death varied with
age.  Whereas death rates for those 85 years of age or older were
810 times those of 5-17 year olds, for hospitalization the multiplier
was 52. The rates for 0-4 year olds were around twice those for
5-17 year olds. Overall rates varied, in both cases, with ethnicity.

Between country comparisons can be hazardous.  There are likely to be
differences in the completeness of the data and in recording protocols.
Case numbers are likely to be influenced by testing rates, are to be 
substantial undercounts, to an extent that varies from country to country.

## The Yule-Simpson paradox --- UCB admissions data

The Yule-Simpson paradox is a paradox of human intuition.
It arises when weighting effects operate with respect to two
or more factors.  University of California Berkeley (UCB) 
1973 admissions data for the six largest departments, 
summarized in Figure \@ref(fig:UCBgph1), provides an example.
Admission rates varied by department, as did the relative 
numbers of males and females applying, in ways that led to the 
paradox. Male/female differences within departments were of
lesser consequence.

Overall admission rates across the six largest departments were: 


```r
## Tabulate by Admit and Gender
byGender <- margin.table(UCBAdmissions, margin=1:2)
round(100*prop.table(byGender, margin=2)["Admitted", ], 1)
```

```
##   Male Female 
##   44.5   30.4
```

Taken at face value, these numbers suggest discrimination 
against females,  




```r
par(mar=c(3.1,3.1,2.6,0.6), mgp=c(2,0.5,0))
applied <- margin.table(UCBAdmissions, margin=2:3)
pcAdmit <- 100*prop.table(UCBAdmissions, margin=2:3)["Admitted", , ]
byGender <- 100*prop.table(margin.table(UCBAdmissions,
                                        margin=1:2), margin=2)
dimnam <- dimnames(UCBAdmissions)
mfStats <- data.frame(Admit=c(pcAdmit[1,],pcAdmit[2,]),
                      Applicants=c(applied[1,], applied[2,]),
                      mf=factor(rep(dimnam[['Gender']],c(6,6)),
                                levels=dimnam[['Gender']]),
                      Department=rep(dimnam[["Dept"]],2))
xlim <- c(0, max(mfStats$Admit)*1.025)
ylim <- c(0, max(mfStats$Applicants)*1.075)
plot(Applicants~Admit, data=mfStats, xlim=xlim, ylim=ylim,
     fg="gray", cex.lab=1.25,
     col=rep(c("blue","red"),rep(6,2)),type="h",lwd=2,
     xlab="UCB Admission rates (%), 1973", 
     ylab="Number of applicants")
pcA <- rbind(pcAdmit[1,], apply(pcAdmit,2, mean)+2, pcAdmit[2,], rep(NA,6))
pcA[2,3] <- pcA[2,3]+1
appA <- rbind(applied[1,], apply(applied,2, mean)+80,
              applied[2,], rep(NA,6))
deptNam <- dimnam[[3]]
for(j in 1:ncol(appA))
  lines(pcA[,j], appA[,j], type="c", col="gray")
text(pcA[2,],appA[2,],deptNam)
##
par(xpd=TRUE)
text(byGender[1,1:2], rep(par()$usr[4],2)+0.5*strheight("^"), labels=c("^","^"),
     col=c("blue","red"),cex=1.25,srt=180)
text(byGender[1,], par()$usr[4]+1.4*strheight("A"),
     labels=paste(round(byGender[1,],1)),cex=0.85)
text(byGender[1,1:2]+c(-3.5,3.5), rep(par()$usr[4],2)+2.65*strheight("A"),
     labels=c("All males","All females"), pos=c(4,2), cex=1.25)
par(xpd=FALSE)
abline(h=200*(0:4),col="lightgray",lty="dotted")
abline(v=20*(0:4),col="lightgray",lty="dotted")
legend("topleft", col=c('blue','red'),lty=c(1,1), lwd=0.75, cex=0.9,
       y.intersp=0.65, legend=c("Males","Females"),bty="n")
```

<div class="figure">
<img src="07-weighting_files/figure-epub3/UCBgph1-1.png" alt="UCB admossion data for 1973, accounting for male/female differences, by department.  Department labels range from A to E." width="72%" />
<p class="caption">(\#fig:UCBgph1)UCB admossion data for 1973, accounting for male/female differences, by department.  Department labels range from A to E.</p>
</div>

Admission rates for males and females, by department, tell a different 
story:


```r
admit <- round(100*prop.table(UCBAdmissions,
                     margin=2:3)["Admitted", , ], 1)
tab <- xtable::xtable(admit, digits=1)
print(tab, type='latex', comment=FALSE, floating=FALSE, scalebox=0.9)
```

\scalebox{0.9}{
\begin{tabular}{rrrrrrr}
  \hline
 & A & B & C & D & E & F \\ 
  \hline
Male & 62.1 & 63.0 & 36.9 & 33.1 & 27.7 & 5.9 \\ 
  Female & 82.4 & 68.0 & 34.1 & 34.9 & 23.9 & 7.0 \\ 
   \hline
\end{tabular}
}
The biggest differences in admission rates were in departments
A (82.4%-62.1%=20.3%) and B (68%-63%=5%), in both cases favouring females.
In the other four departments, differences were 3.8% or less.

In order to understand how this happens, it is necessary to look
at how the numbers that applied break down by gender and by department:


```r
library(xtable)
tots <- margin.table(UCBAdmissions, margin=2:3)
tab <- xtable::xtable(tots, digits=0)
print(tab,type='latex', comment=FALSE, floating=FALSE, scalebox=0.9)
```

\scalebox{0.9}{
\begin{tabular}{rrrrrrr}
  \hline
 & A & B & C & D & E & F \\ 
  \hline
Male & 825 & 560 & 325 & 417 & 191 & 373 \\ 
  Female & 108 & 25 & 593 & 375 & 393 & 341 \\ 
   \hline
\end{tabular}
}

Comparing departments A and B with other departments, one finds:

```
##         
##                       AB                CDEF
##   Male   1385 (62.1,63%)  981 (5.9 to 36.9%)
##   Female  133 (82.4,68%) 1109 (7.0 to 34.9%)
```

* Overall admission rates for males are weighted (1385:981) towards
male rates of 62.1% or 63% in departments A and B.
* Those for females are strongly weighted (1109:133) towards admission rates that range from 5.9% to 34.1% in departments C to F.

### UCB Admissions Data -- Another perspective {-}




```r
par(mar=c(3.1,3.1,2.1,0.6), mgp=c(2,0.5,0))
diffAdmit <- t(pcAdmit)
diffAdmit <- data.frame(dept=rownames(diffAdmit), stringsAsFactors=FALSE,
                        Male=diffAdmit[,1],Female=diffAdmit[,2],
                        diff=diffAdmit[,2]-diffAdmit[,1])
diffAdmit$mfratio <- signif(apply(applied,2, function(x)x[1]/x[2]),2)
ord <- order(diffAdmit$diff)
plot(diff ~ I(1:6), data=diffAdmit[ord,], pch=dept, cex=1.25,
     ylim=c(-5.25,21.5), xlab="Order of difference", fg="gray",
     ylab="Female - Male difference (%)")
with(diffAdmit[ord,], text(diff~I(1:6), labels=paste(mfratio), 
                           pos=c(rep(4,5),2)), cex=0.8)
leg <- c("Male:Female ratios of numbers",
         "who applied are shown alongside",
         "each letter")
legend("topleft", legend=leg, box.col="gray")
```

<div class="figure">
<img src="07-weighting_files/figure-epub3/UCBdiffs-1.png" alt="UCB admossion data for 1973 --- another perspective." width="72%" />
<p class="caption">(\#fig:UCBdiffs)UCB admossion data for 1973 --- another perspective.</p>
</div>

Effective  graphs can help greatly in fairly representing the evidence. 
The website
 <https://www.youtube.com/watch?v=ZDinnCwP3dg> 
has an animated video that provides a short overview of the paradox.

The same sorts of paradoxical effects can be found in regression.
The Yule-Simpson paradox may be regarded as a special case of Lord's
paradox, described in @lord1967paradox. Any attempt to attach meaning
to regression coefficients can be highly misleading, unless one can be
sure that effects of all variates and covariates are properly 
accounted for.  It is rarely easy, with observational data, to be sure 
that this has been done effectively.

## Third variables change the story --- further examples

Here, "variable" is used as generic name for either continuous
variables, or categorical variables, otherwise called factors.

### Does Baclofen help in reducing pain? {-}

<!-- ```{r baclofen,  out.width="100%"} -->
<!-- knitr::include_graphics("./pictures/baclofen.png") -->
<!-- ``` -->


```r
cap9 <- "Data are pain reduction scores. Subgroup numbers, shown
    below each point, weight the overall average (''ALL'') for
    baclofen towards the high female average, and for no baclofen
    slightly towards the low male average."
```


```r
library(lattice)
parset <- simpleTheme(cex=1.35, pch=16,
                      col=c("darkblue","turquoise"))
gabalong <- data.frame(values=unlist(DAAG::gaba["30",])[-1],
                       sex=rep(c("male", "female", "ALL"), rep(2,3)),
                       trt=rep(c("Baclofen","No baclofen"),3))
gph <- stripplot(sex~values, groups=trt, data=gabalong, 
          par.settings=parset,
          xlab=list("Average reduction: 30 min vs 0 min",
          cex=1.0),
          scales=list(cex=1.0),
          panel=function(x,y,...){
              panel.stripplot(x,y,...)
              ltext(x,y,paste(c(3,9,15,7,22,12)), pos=1,
                    cex=0.8)
          }, auto.key=list(columns=2, points=TRUE, cex=1.0))
gph + latticeExtra::layer(panel.abline(h=1.35, col="gray"))
```

<div class="figure">
<img src="07-weighting_files/figure-epub3/painkiller-1.png" alt="Data are pain reduction scores. Subgroup numbers, shown
    below each point, weight the overall average (''ALL'') for
    baclofen towards the high female average, and for no baclofen
    slightly towards the low male average."  />
<p class="caption">(\#fig:painkiller)Data are pain reduction scores. Subgroup numbers, shown
    below each point, weight the overall average (''ALL'') for
    baclofen towards the high female average, and for no baclofen
    slightly towards the low male average.</p>
</div>

Researchers were comparing two
analgesic treatments, without and with baclofen. When the paper was
first submitted for publication, an alert reviewer spotted that some
of the treatment groups contained more women than men, and asked
whether this might account for the
results.\footnote{Cohen, P. 1996. Pain discriminates between the
sexes.  New Scientist, 2 November, p. 16.}

For a fair overall comparison:

* Calculate means for each subgroup separately.
* Overall treatment effect is average of subgroup differences.

The effect of baclofen (reduction in pain score from time 0) is then:

* Females: 3.479 - 4.151 = -0.672 (-ve, therefore an increase)
* Males: 1.311 - 1.647 = -0.336
* Average, male \& female = -0.5 $\times$ (0.672+0.336) = -0.504

### Web page revenue per click (Smith, p.111) {-}

In 2010 a US Internet company collected data on the effectiveness
of two different web page layouts:

* 1-click: Adverts appear on website's first page
* 2-click: Click on keyword sends user to page with advert
    + Check interest, then show advert

1-click   |         |   |     | 2-click |  |
---| ------- | -----   | --- | -- | ------- | ------- | ---
   | Revenue | Users   | RPM |    | Revenue | Users   | RPM
  | $2.9   | 250  |$11.60 |   | $1.7 | 140  | $12.14
  
* Revenue and users are millions
* RPM is revenue per million users

The data combines US and International users. Is that an issue?

### US vs International users {-}

\begin{tabular}{l r r r r r r r}
& \multicolumn{3}{l}{1-click} & & \multicolumn{3}{l}{2-click}\\
Location   & Revenue & Users   & RPM && Revenue & Users & RPM\\
US & \$1.8   & \textcolor{red}{70}  &\$27.71 && \$1.2 & \textcolor{red}{50}  & \$24.00\\
Int. & \$1.1   & \textcolor{red}{180} &\$6.11  && \$0.50 & \textcolor{red}{90} & \$5.56\\
& \multicolumn{3}{c}{$\frac{180}{70}$=\textcolor{red}{2.57}} & & \multicolumn{3}{c}{$\frac{90}{50}$=\textcolor{red}{1.8}}\\
\end{tabular}

* Revenue and users are millions
* RPM is revenue per million users

This was followed up with a randomized experiment (an A/B test.)

## Cricket Bowling Averages

### Runs (R), wickets (W) and runs per wicket ({\em RPW}) {-}
\vspace*{-8pt}

\begin{center}
\begin{tabular}{lrrr||rrr||rrr}
\hline
 & \multicolumn{3}{c}{1st innings} & \multicolumn{3}{c}{2nd innings} &
\multicolumn{3}{c}{Overall} \\
\cline{2-4} \cline{5-7} \cline{8-10}
& R & W & {\em RPW}   & R & W & {\em RPW} & R & W
& {\em RPW}\\
Bowler A & 40 & 4 & {\em 10.0} & 240 & 6 & {\em 40.0} & 280 & 10 &
{\em 28.0}\\
Bowler B & 70 & 5 & {\em 14.0} & 50 & 1 & {\em 50.0} & 120 & 6 & {\em 20.0} \\
\hline
\end{tabular}
\end{center}

### Fair comparison: Compare runs per wicket ({\em RPW}) {-}
\vspace*{-5pt}

\begin{center}
\begin{tabular}{lrr||rr||rr}
\hline
 & \multicolumn{2}{c}{1st innings} & \multicolumn{2}{c}{2nd innings} &
\multicolumn{2}{c}{Overall} \\
\cline{2-3} \cline{4-5} \cline{6-7}
         &  RPW & {\em W}   &  RPW & {\em W} &
           RPW & {\em W} \\[4pt]
Bowler A &  10.0 & (4) & 40.0 & (6)  &
$\frac{10+40}{2} = 25$ & (10)\\[4pt]
Bowler B & 14.0 & (5)  & 50.0 & (1) & $\frac{50+14}{2} = 32$  &  (6)\\[4pt]
\cline{2-3} \cline{4-5} \cline{6-7}
\end{tabular}
\end{center}

## Epistatic effects on genetic studies

In population genetics, Simpson's paradox type effects are known as
epistasis.  Most human societies are genetically heterogeneous.  In
San Francisco, any gene that is different between the European and
Chinese populations will be found to be associated with the use of
chopsticks!  If a disease differs in frequency between the European
and Chinese populations, then a naive analysis will find an
association between that disease and any gene that differs in
frequency between the European and Chinese populations.

Such effects are major issues for gene/disease population
association studies.  It is now common to collect genetic
fingerprinting data that should identify major heterogeneity.
Providing such differences are accounted for, large effects that show
up in large studies are likely to be real.  Small effects may well be
epistatic.
