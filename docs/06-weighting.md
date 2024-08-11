# Weighting effects that skew statistics {#sec:yule1}





## Covid-19 deaths --- comparing countries



<div class="figure" style="text-align: center">
<img src="06-weighting_files/figure-epub3/riskByAge-1.png" alt="US data for proportions who died from Covid-19, and in total,
for the 13 months up to 31 January 2021. Vaccination of a substantial 
part of the population, and the emergence of new variants, will,
six months or more later, have substantially changed the pattern
of relative risks by age." width="60%" />
<p class="caption">(\#fig:riskByAge)US data for proportions who died from Covid-19, and in total,
for the 13 months up to 31 January 2021. Vaccination of a substantial 
part of the population, and the emergence of new variants, will,
six months or more later, have substantially changed the pattern
of relative risks by age.</p>
</div>



Figure \@ref(fig:riskByAge) shows stark differences by age in US Covid-19 death rates. The US death rates per 1000 for under age 65 as opposed to age $>=$ 65, were 0.28, 6.3 US totals for infection rates and for hospital admissions were also impacted by age structure, but to a lesser extent. More recent Covid-19 variants would present a somewhat different picture.

Countries with a lower proportion of their population aged \>=65 would, if the death rates for each of the two groups are similar to US rates, have lower overall death rates. The following compares the overall deaths rates for the US with what might, if these figures carried across, be expected for Kenya and for Italy.


```
                               US Italy Kenya
Percentage 65 or more        16.3  23.3   2.5
Expected deaths per 100,000 126.7 168.5  43.5
Reported deaths per 100,000 126.7 146.0   3.3
```

Between country comparisons are hazardous. The dependence of reported case numbers on testing rates and reporting protocols makes it likely that they will be substantial undercounts, to an extent that varies from country to country.

## University admissions data --- Simpson's paradox {#sec:Y-S}

Admissions data for University of California Berkeley in 1973 showed a curious anomaly. Overall admission rates strongly favoured males, while in individual departments the rates mostly favoured females. The table shows percent admission rates, with number applying shown in brackets underneath.

<table>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> OVERALL </th>
   <th style="text-align:right;"> A </th>
   <th style="text-align:right;"> B </th>
   <th style="text-align:right;"> C </th>
   <th style="text-align:right;"> D </th>
   <th style="text-align:right;"> E </th>
   <th style="text-align:right;"> F </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> 44.5 </td>
   <td style="text-align:right;width: 2.5em; "> 62.1 </td>
   <td style="text-align:right;width: 2.5em; "> 63 </td>
   <td style="text-align:right;width: 2.5em; "> 36.9 </td>
   <td style="text-align:right;width: 2.5em; "> 33.1 </td>
   <td style="text-align:right;width: 2.5em; "> 27.7 </td>
   <td style="text-align:right;width: 2.5em; "> 5.9 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> (2691) </td>
   <td style="text-align:right;width: 2.5em; "> (825) </td>
   <td style="text-align:right;width: 2.5em; "> (560) </td>
   <td style="text-align:right;width: 2.5em; "> (325) </td>
   <td style="text-align:right;width: 2.5em; "> (417) </td>
   <td style="text-align:right;width: 2.5em; "> (191) </td>
   <td style="text-align:right;width: 2.5em; "> (373) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> 30.4 </td>
   <td style="text-align:right;width: 2.5em; "> 82.4 </td>
   <td style="text-align:right;width: 2.5em; "> 68 </td>
   <td style="text-align:right;width: 2.5em; "> 34.1 </td>
   <td style="text-align:right;width: 2.5em; "> 34.9 </td>
   <td style="text-align:right;width: 2.5em; "> 23.9 </td>
   <td style="text-align:right;width: 2.5em; "> 7 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> (1835) </td>
   <td style="text-align:right;width: 2.5em; "> (108) </td>
   <td style="text-align:right;width: 2.5em; "> (25) </td>
   <td style="text-align:right;width: 2.5em; "> (593) </td>
   <td style="text-align:right;width: 2.5em; "> (375) </td>
   <td style="text-align:right;width: 2.5em; "> (393) </td>
   <td style="text-align:right;width: 2.5em; "> (341) </td>
  </tr>
</tbody>
</table>

Figure \@ref(fig:UCBgph1) provides a graphical summary.



<div class="figure" style="text-align: center">
<img src="06-weighting_files/figure-epub3/UCBgph1-1.png" alt="UCB admossion data for 1973, for males and females, by 
department.  Department labels range from A to E.  Notice that
the largest differences in admission rates are for departments
A and B, in both cases favouring females." width="72%" />
<p class="caption">(\#fig:UCBgph1)UCB admossion data for 1973, for males and females, by 
department.  Department labels range from A to E.  Notice that
the largest differences in admission rates are for departments
A and B, in both cases favouring females.</p>
</div>

There are thus three different broad admission patterns. The big differences in admission rates were in departments A (82.4%-62.1%=20.3%) and B (68%-63%=5%), in both cases favouring females. In the other four departments, differences were 3.8% or less, and split very nearly equally between slightly favouring females and slightly favouring males. Also, the relative numbers of males and females applying did not show the same big differences as in departments A and B.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:admitrates123)Comparion of admission rates (percent) and numbers of males and
females applying, for departments A, B, and CDEF which combines 
numbers for departments other than A and B.</caption>
 <thead>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:right;"> TOTALS </th>
   <th style="text-align:right;"> A </th>
   <th style="text-align:right;"> B </th>
   <th style="text-align:right;"> CDEF </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Male </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> 44.5 </td>
   <td style="text-align:right;width: 2.25em; "> 62.1 </td>
   <td style="text-align:right;width: 2.25em; "> 63 </td>
   <td style="text-align:right;width: 2.25em; "> 25.5 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> (2691) </td>
   <td style="text-align:right;width: 2.25em; "> (825) </td>
   <td style="text-align:right;width: 2.25em; "> (560) </td>
   <td style="text-align:right;width: 2.25em; "> (1306) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Female </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> 30.4 </td>
   <td style="text-align:right;width: 2.25em; "> 82.4 </td>
   <td style="text-align:right;width: 2.25em; "> 68 </td>
   <td style="text-align:right;width: 2.25em; "> 26.5 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;width: 5em; font-weight: bold;"> (1835) </td>
   <td style="text-align:right;width: 2.25em; "> (108) </td>
   <td style="text-align:right;width: 2.25em; "> (25) </td>
   <td style="text-align:right;width: 2.25em; "> (1702) </td>
  </tr>
</tbody>
</table>

-   The overall male rates are weighted (825+560):(325+(417+191+373 = 1385:1306 or 1.06:1, between an overall AB rate of 62.5%, and the CDEF rate of 25.5%.\
-   Overall female rates are weighted 133:1702 = 1:15.8 for departments A and B, as against departments CDEF. Overall female rates are, accordingly, strongly weighted towards the 26.5% rate for other departments.

### UCB Admissions Data -- Another perspective {.unnumbered}



<div class="figure" style="text-align: center">
<img src="06-weighting_files/figure-epub3/UCBdiffs-1.png" alt="UCB admossion data for 1973 --- another perspective." width="72%" />
<p class="caption">(\#fig:UCBdiffs)UCB admossion data for 1973 --- another perspective.</p>
</div>

In order to understand how the overall imbalance between numbers of males and females arose, it was necessary to break the data down by department. The major driver of the overall imbalance was the low numbers of females, relative to males, applying to department A (and, to a lesser extent, B) where admission rates were highest.

See <https://www.youtube.com/watch?v=ZDinnCwP3dg> for an animated video that explains the Yule-Simpson paradox.

### A note on Lord's paradox {.unnumbered}

The same sorts of paradoxical effects can be found in regression. The Yule-Simpson paradox may be regarded as a special case of Lord's paradox, described in @lord1967paradox.[^06-weighting-1] Any attempt to attach meaning to regression coefficients can be highly misleading, unless it is clear that effects of all relevant variables are properly accounted for. It is rarely easy, with observational data, to be sure that this has been done effectively, a point that will be taken up in Chapter \@ref(sec:reg).

[^06-weighting-1]: See also @tu2011statistical, pp.60-71

## Comparing unvaccinated with vaccinated

Once high enough vaccination rates have been achieved, a greater number of Covid-19 infections will be found among the vaccinated than among the vaccinated. Suppose that, for a particular age group and for a particular vaccine, the risk rate for severe Covid-19, is 5% for unvaccinated versus 1% for vaccinated, i.e. a relative risk of 5:1. Consider the following scenarios. The final column has the relative numbers, for unvaccinated versus vaccinated with Covid-19:

| Unvaccinated | Vaccinated | Relative numbers with severe Covid-19 |
|--------------|------------|---------------------------------------|
| 200          | 800        | 10 unvaccinated : 8 among vaccinated  |
| 100          | 900        | 5 : 9                                 |
| 0            | 1000       | 0 : 10                                |

At a certain point, provided the risk ratio is greater than 1.0, the higher number will be from the vaccinated. Of course, the 100% vaccination rate scenario in the final row is unlikely to be realized.

### Report found almost 60% of cases were vaccinated {.unnumbered}

As of August 15 2021, Israeli data showed that 301 of those hospitalized with severe Covid-19 were fully vaccinated, while 214 were not. We need to compare, not the counts, but the proportions of vaccinated and unvaccinated, i.e., look at the percentages that are shown in brackets following the counts.[^06-weighting-2] Numbers given are of those aged 12 or more.

[^06-weighting-2]: Data are from <https://bit.ly/3h1mwXQ>, on the website <https://www.covid-datascience.com/>.

|                     | Unvaccinated | Fully vaccinated |     |
|---------------------|--------------|------------------|-----|
| Number (aged \>=12) | 1,302,912    | 5,634,634        |     |
| Severe cases        | 214 (16.4%)  | 301 (5.3%)       |     |

The relative risk is 16.4/5.3 $\simeq$ 3.1. Because no account has been taken of age differences, this still underestimates the effectiveness of vaccination. A fairer picture is:

|              | Unvaccinated | Fully vaccinated |     |
|--------------|--------------|------------------|-----|
| Number \<50  | 1,116,834    | 3,501,118        |     |
| Severe cases | 43 (3.9%)    | 11 (0.3%)        |     |
| ----         | ----         | ----             |     |
| Number \>=50 | 186,078      | 2,133,518        |     |
| Severe cases | 171 (91.9%)  | 290 (13.6%)      |     |

The relative risk is 3.9/0.3 $\simeq$ 13 for those under 50, and 91.9/13.6 $\simeq$ 6.8 for those over 50, i.e., in both cases much greater than the 3.1 ratio obtained when the split between under 50s and 50 or more is ignored. Even this does not do justice to the data, which needs to be split into smaller age ranges.

<!-- Here, "variable" is used as generic name for either continuous -->

<!-- variables, or categorical variables, otherwise called factors. -->

## Further illustrative examples

### Does Baclofen help in reducing pain? {.unnumbered}

<!-- ```{r baclofen,  out.width="100%"} -->

<!-- knitr::include_graphics("./pictures/baclofen.png") -->

<!-- ``` -->



<div class="figure" style="text-align: center">
<img src="06-weighting_files/figure-epub3/painkiller-1.png" alt="Data are pain reduction scores. Subgroup numbers, shown
    below each point, weight the overall average (''ALL'') for
    baclofen towards the high female average, and for no baclofen
    slightly towards the low male average."  />
<p class="caption">(\#fig:painkiller)Data are pain reduction scores. Subgroup numbers, shown
    below each point, weight the overall average (''ALL'') for
    baclofen towards the high female average, and for no baclofen
    slightly towards the low male average.</p>
</div>

In work reported in @cohen1996, researchers were comparing two analgesic treatments, without and with baclofen. When the paper was first submitted for publication, an alert reviewer spotted that some of the treatment groups contained more women than men, and asked whether this might account for the results.

For a fair overall comparison:

-   Calculate means for each subgroup separately.
-   Overall treatment effect is average of subgroup differences.

The effect of baclofen (reduction in pain score from time 0) is then:

-   Females: 3.479 - 4.151 = -0.672 (-ve, therefore an increase)
-   Males: 1.311 - 1.647 = -0.336
-   Average, male & female = -0.5 $\times$ (0.672+0.336) = -0.504

### Web page revenue per click {.unnumbered}

@smith-sd (p.111) describes an experiment where a US Internet company collected data that compared the effectiveness of two strategies. In the 1-click strategy, an advert appeared on the website's first page. The 2-click strategy required the user to click on a keyword which then led to a page with the advert. The response (total dollar value of purchases) was compared between the two.

The following, with numbers changed to make the comparison relatively simple, shows a scenario that is not unlike that given by Smith:

| 1-click |       |         |     | 2-click |       |         |     |
|---------|-------|---------|-----|---------|-------|---------|-----|
| Revenue | Users | RP1000  |     | Revenue | Users | RP1000  |     |
| \$2500  | 200   | \$12.50 |     | \$3000  | 300   | \$15.00 |     |

The 1-click strategy appears to give a better return.

<!-- Now break the data down, looking separately at US and International users. -->

<!-- \begin{tabular}{l r r r r r r r} -->

<!-- & \multicolumn{3}{l}{1-click} & & \multicolumn{3}{l}{2-click}\\ -->

<!-- Location   & Revenue & Users   & RP1000 && Revenue & Users & RP1000\\ -->

<!-- US & \$1.8   & \textcolor{red}{70}  &\$27.71 && \$1.2 & \textcolor{red}{50}  & \$24.00\\ -->

<!-- Int. & \$1.1   & \textcolor{red}{180} &\$6.11  && \$0.50 & \textcolor{red}{90} & \$5.56\\ -->

<!-- & \multicolumn{3}{c}{$\frac{180}{70}$=\textcolor{red}{2.57}} & & \multicolumn{3}{c}{$\frac{90}{50}$=\textcolor{red}{1.8}}\\ -->

<!-- \end{tabular} -->

Now, see how the numbers divide up when a split is made between US and international visitors to the site. The numbers (thousands) for the two strategies divide up thus, with the revenue per thousand users given, in each case, in brackets:

|     | 1-click | 2-click |
|-----|---------|---------|
| US  | 50      | 80      |
|     | (\$32)  | (\$30)  |
| Int | 150     | 120     |
|     | (\$6)   | (\$5)   |

The 1-click strategy clearly gives a better return, both for US and for international users.

The overall figure is dominated by the result for the 150,000 international users (as opposed to 50,000 US) in the 1-click sample. This compares with the much weaker weighting towards international users (120,000 as opposed to 80,000) in the 2-click sample.

In the case that Smith reported, the type of analysis shown was followed up with a randomized experiment (an A/B test), where the probability of assignment to 1-click, as opposed to 2-click, was the same for both classes of user.

## Cricket Bowling Averages

### Runs (R), wickets (W) and runs per wicket ({\em RPW}) {.unnumbered}

\vspace*{-8pt}

```{=tex}
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
```
### Fair comparison: Compare runs per wicket ({\em RPW}) {.unnumbered}

\vspace*{-5pt}

```{=tex}
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
```
## Epistatic effects in genetic studies

In population genetics, Simpson's paradox type effects are known as epistasis. Most human societies are genetically heterogeneous. In San Francisco, any gene that is different between the European and Chinese populations will be found to be associated with the use of chopsticks! If a disease differs in frequency between the European and Chinese populations, then a naive analysis will find an association between that disease and any gene that differs in frequency between the European and Chinese populations.

Such effects are major issues for gene/disease population association studies. It is now common to collect genetic fingerprinting data that should identify major heterogeneity. Providing such differences are accounted for, large effects that show up in large studies are likely to be real. Small effects may well be epistatic.
