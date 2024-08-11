# Regression and Correlation {#sec:reg}



When two variables show a relationship, they are said to be correlated. Regression and correlation offer alternative, and complementary, perspectives on the relationship.[^08-regress-1] Nonsense correlations that arise where the third variable is time provide simple examples.[^08-regress-2]

[^08-regress-1]: The discussion will avoid the technicalities of alternative ways to measure correlation. The particular correlation measure that is used in the examples that follow is the product-moment or Pearson correlation, which relates directly to linear (straight line) regression.

[^08-regress-2]: Yule-Simpson type effects, discussed in Section \@ref(sec:yule1), are important in a regression context also.

## Correlation is not causation

Variable A may cause variable B. Or variable B may cause variable A. Or both A and B may be caused (or driven) by a third variable C.

The following are examples where causation likely goes in the other direction, or where a third variable is likely to be involved. Such examples help highlight how correlation can and cannot reasonably be interpreted.

1.  Children of parents who try to control eating are more likely to be overweight.
2.  Ice cream consumption & polio were closely correlated in the 1950s.
    -   Summer was when the virus thrived.

Cases where the third variable is time, as in Figure \@ref(fig:socAnti), are a fruitful source of examples of spurious correlations.[^08-regress-3] Is there a third factor, or is this just a chance relationship?

[^08-regress-3]: Figure \@ref(fig:socAnti) is one of many such examples that are available from\
    <http://www.tylervigen.com/spurious-correlations>.



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/socAnti-1.png" alt="Sociology PhDs awarded (from US National Science 
Foundation data) vs Deaths from Anticoagulants.  Notice
that `Doctorates` and `Deaths` show a very similar pattern
of change from year to year." width="100%" />
<p class="caption">(\#fig:socAnti)Sociology PhDs awarded (from US National Science 
Foundation data) vs Deaths from Anticoagulants.  Notice
that `Doctorates` and `Deaths` show a very similar pattern
of change from year to year.</p>
</div>

Another example is that, over 1997 to 2009, US Sociology PhDs awarded correlated strongly with worldwide non-commercial space launches. These correlations would seem to be the result of chance. Look at enough variable pairs, and such correlatiosn will sometimes appear.

## Regression to the mean

Tall fathers are likely to have tall sons, but shorter than themselves. Tall sons are likely to have tall fathers, but shorter than themselves. The data shown in Figure \@ref(fig:pearson) are from @pearson1903laws. The correlation between son's height and father's height is 0.5.[^08-regress-4]

[^08-regress-4]: Kahneman argues, perhaps too simplistically that as height is mainly due to genetic factors, and fathers share half of their genes with their sons, this is to be expected.

Notice that the points that are plotted show a a symmetrical elliptical shaped scatter about the mean (shown with a large solid dot in Panel A). This type of scatter is, strictly, required for uses of the correlation that will now be discussed.



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/pearson-1.png" alt="Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves." width="100%" />
<p class="caption">(\#fig:pearson)Tall fathers are likely to have tall sons, but shorter than themselves. 
Tall sons are likely to have tall fathers, but shorter than themselves.</p>
</div>

Consider a father whose height is 72 inches, which is the 95th percentile of heights for fathers. What is a best guess for the height of a son? One can read the predicted value off from the graph (the solid horizontal line in Panel A). Or use the regression equation. Or, reason thus:

-   If the correlation between father's height and son's height were 0, the best guess would be the mean for son's, i.e., 68.7 inches
-   If the correlation were 1, the son's height would be the 95th percentile of heights for sons, i.e., 73.3 inches.
-   But, as the correlation is 0.5, the expected height is 68.7 + 0.5$\times$(73.3-68.7) = 71.0 inches, i.e., start at the mean and move 0.5 of the distance up to the 95th percentile.

Now consider a son whose height is 73.3 inches (the 95th percentile for sons). The argument now goes:

-   The best estimate of the father's height is 67.7 + 0.5$\times$(73.3-67.7)=2.8 inches, i.e., start at the mean for fathers and move 0.5 of the distance up to the 95th percentile.

Galton's 1886 data, which predates Pearson's data, shows a 0.46 correlation between child height and the average of the parent height.

## NBA player points --- correlations decline over time

In Figure \@ref(fig:NBA), Panel A shows total points for 2016-2017 versus 1 year earlier, for players who competed in both seasons. The correlation is 0.83. Panel B is for 2016-2017 versus 5 years earlier, with the correlation now reducing to 0.41.



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/NBA-1.png" alt="As time progresses, correlation decreases, and regression to the mean increases.  For Panel A, the correlation is 0.83, while in Panel B it is 0.41." width="100%" />
<p class="caption">(\#fig:NBA)As time progresses, correlation decreases, and regression to the mean increases.  For Panel A, the correlation is 0.83, while in Panel B it is 0.41.</p>
</div>

The scatter of points increases as values increase, on both axes. Calculations of the type given in the previous section, based on the usual correlation measure, while giving more approximate results, are adequate for present purposes.

## Secrist's "The Triumph of Mediocrity in Business"

Horace Secrist's 1933 book The Triumph of Mediocrity in Business" was based on annual data for 1920 to 1930. Secrist took 73 different industries, in each case examined the ratios

> Profits:sales; Profits:assets; Expenses:sales; Expenses:assets

For each industry in 1920: he then split firms into 4 quartiles: top 25%, 2nd highest 25%, 2nd lowest 25%, lowest 25%.

-   Took average for each statistic, for each quartile, for each year.
-   Surprise, surprise, the best went, on average, down ...

> Complete freedom to enter trade and the continuance of competition mean the perpetuation of mediocrity. ... neither superiority or inferiority will tend to persist. Rather, mediocrity tends to become the rule. [@secrist1933triumph]



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/sim-1.png" alt="Secrist's data showed a correlation of 0.5 between
time intervals five years apart.  Panel A uses shows means of simulations,
starting with the four performance quartiles in 1920 and looking ahead.
Panel B starts with the equivalent quartiles in 1930, and looks back." width="105%" />
<p class="caption">(\#fig:sim)Secrist's data showed a correlation of 0.5 between
time intervals five years apart.  Panel A uses shows means of simulations,
starting with the four performance quartiles in 1920 and looking ahead.
Panel B starts with the equivalent quartiles in 1930, and looks back.</p>
</div>

Secrist was seeing regression to the mean. Figure \@ref(fig:sim) makes the point that if one takes the four quartiles in 1930 and looks back to 1920, in each case there is a regression back to the mean. Given a correlation of 0.7 between time intervals five years apart, The absolute difference from the mean moves from 8 to 0.7$\times$ 8 (= 5.6) to 0.7$\times$ 5.6 (= 3.92), whether one moves by two successive five year intervals forward in time, or back in time.

### "Do old fallacies ever die?" {.unnumbered}

@smith-sd gives references to work by prominent economists in the past half-century that had quoted Secrist approvingly or repeated his error.

-   1980s investment textbook: "Ultimately, economic forces will force the convergence of the profitability and growth rates of different firms." This was backed up with a 1980/1966 Secrist type comparison.
-   2000: (Journal article) "... profitability is mean-reverting within as well as across industries. Other firms eventually mimic products and technologies that produce above normal profitability ..."
-   @wainerRegress cites other examples.

### Decathlon performances in 2006 {.unnumbered}









<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/selected-1.png" alt="Between event correlations for top performances in six
of the ten decathlon events in 2006.  Points that are plotted,
and correlations, are for times or distances achieved." width="68%" />
<p class="caption">(\#fig:selected)Between event correlations for top performances in six
of the ten decathlon events in 2006.  Points that are plotted,
and correlations, are for times or distances achieved.</p>
</div>



Figure \@ref(fig:selected) shows between event correlations for top performances (6800 points and over) for six events in the 2006 decathlon.[^08-regress-5] Note the 0.032 correlation of javelin with high jump. Performance in one of these two sports was not a useful indicator of what to expect in the other.

[^08-regress-5]: The dataset `Decathlon` in the R package `GDAdata` has data for the 21-year period after new rules were introduced in 1985. See also the Estonian website <http://www.decathlon2000.com/>

The correlation between shot put distances and long jump distances is shown as a more informative 0.29. If we find that an athlete has achieved a distance of 14.9 meters in the shot put, which is at the 93$^{th}$ percentile across athletes as a whole (7% did better), a best estimate for the long jump can be obtained thus:

-   A 14.9 meter put is at the 93$^{th}$ centile (7% will do better)
-   The long jump mean is 6.97, with the 93% mark = 7.47
    -   The difference from the mean is 7.47-6.97 = 0.5
-   The estimate for the long jump is then 6.97+0.29 $\times$ 0.5 = 7.12

## Moderating predictive assessments

### Moderating sales estimates {.unnumbered}

You are the sales forecaster for a department store chain. All stores are similar in size and merchandise offered, but random factors affect sales in any year. Overall sales are expected to increase by 10% from 2020 to 2021. Sales in 2020, with the expected total and mean for 2021 are, in millions of dollars:

| Store | 2020             | 2021 |
|-------|------------------|------|
| 1     | 10               | ---  |
| 2     | 23               | ---  |
| 3     | 18               | ---  |
| 4     | 29               | ---  |
| TOTAL | 80 t each of the |      |

stores in 2021. The mean sales amount in 2021 is predicted to be 22,000,000 dollars? With a correlation of 0.4, the predicted sales for the individual stores are obtained thus:

| Store | 2020 | Subtract 20 | Xply by 0.4, add to 22 | Predicted sales |
|-------|------|-------------|------------------------|-----------------|
| 1     | 10   | -10         | 22-4                   | 18              |
| 2     | 23   | +3          | 22+1.2                 | 23.2            |
| 3     | 18   | -2          | 22-0.8                 | 21.2            |
| 4     | 29   | +9          | 29+3.6                 | 32.6            |
| MEAN  | 20   | 0           | 22                     | 22              |

In the real world of 2020 and 2021, the Covid-19 pandemic makes all such predictions hazardous!

### Choosing from job applicants {.unnumbered}

Correlation between presentation & performance is likely to be lower for the less well-known. In both cases performance is likely, relative to presentation, to move in closer to the mean. For less well-known candidates, the shift towards the mean is likely to be greater.

### Kahneman's comments on regression to the mean {.unnumbered}

> "Extreme predictions and a willingness to predict rare events from weak evidence are both manifestations of System 1. ..."

> "Regression to the mean is also a problem for System 2. The very idea ... is alien and difficult to communicate and comprehend. This is a case where System 2 requires special training."

> "We intuitively want to match predictions to the evidence."

> "We will not learn to understand regression from experience."

### Regression to the mean in verse {.unnumbered}

<https://www.youtube.com/watch?v=sxMllckUWaw>

## Time per unit distance for hillraces

Regression coefficients may differ greatly depending on what adjustments are made for other variables. This is important for attaching meaning to a coefficient. For the hillrace data that will now be considered, it is relatively easy to tease out the role of the explanatory variables that have been included in one or alternative versions of the regression equation. Especially where there are three or more explanatory variables, with the manner in which they should enter into the regression equation is unclear, the effect of an individual variable that is of interest can be difficult or impossible to tease out.

The hillrace dataset has record times for 23 Northern Ireland Mountain Running Association hillraces, as given in the 2007 calendar. In the models fitted and graphs shown that follow, the distance measure is `Dist` (distance converted to kilometers), the climb measure is `Climb` (vertical distance between lowest and highest point, in meters), and the time measure is `Time` (in minutes).

How does time per unit distance (`timePerKm`) vary with distance. We will fit two equations, both with $y$ = `timePerKm`.





<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/partial-1.png" alt="Variation in time per unit distance with distance.  Panel A
shows the pattern of change when `log(Climb)` is held constant at its 
mean value, while Panel B shows the pattern of change when 
`log(Climb/Dist)` is held constant at its mean value." width="100%" />
<p class="caption">(\#fig:partial)Variation in time per unit distance with distance.  Panel A
shows the pattern of change when `log(Climb)` is held constant at its 
mean value, while Panel B shows the pattern of change when 
`log(Climb/Dist)` is held constant at its mean value.</p>
</div>

Figure \@ref(fig:partial)A shows the dependence of `timePerKm` depends on `log(Dist)`, when `log(Climb)` is held at its mean value. Use of `log(Dist)` rather than `Dist` means that distance on the $x$-axis from 2 to 4 (km) is the same as from 4 to 8, or from 8 to 16, or from 16 to 32, i.e., equal distances correspond to equal multiplicative changes. The equation that is plotted is

> `timePerKm` = 8.5 -1.6 $\times$ `log(Dist)`

Figure \@ref(fig:partial)B shows the dependence of `timePerKm` depends on `log(Dist)`, when `log(Climb/Dist)` is held at its mean value. The equation that is plotted is

> `timePerKm` = 3.33 + 0.84 $\times$ `log(Dist)`

In Panel A, time per kilometer decreases quite sharply as distance increases. This happens because the ratio of `Climb` to `Dist` decreases if `Climb` is held constant while `Dist` increases, i.e., longer distance races involve gentler ascents and descents.

Panel B shows what happens when `Climb/Dist` is held constant, i.e., we are comparing races with the same ratio of `Climb` to `Dist`. As expected, time per kilometer does then decrease as distance increases.

## Model that do not correctly fit the data readily mislead

### Are herricanes more dangerous than himmicanes? {.unnumbered}



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/hurricanes1-1.png" alt="Deaths versus damage estimate in US dollars. The red (for female) 
and blue (for male) dashed lines are close equivalents of Jung at al's fit
to the data. The $y$-axis uses a scale of equal relative numbers of deaths, 
while the $x$-axis uses a scale of equal dollar damage costs." width="80%" />
<p class="caption">(\#fig:hurricanes1)Deaths versus damage estimate in US dollars. The red (for female) 
and blue (for male) dashed lines are close equivalents of Jung at al's fit
to the data. The $y$-axis uses a scale of equal relative numbers of deaths, 
while the $x$-axis uses a scale of equal dollar damage costs.</p>
</div>

The United States National Hurricane Center began formally naming hurricanes in 1950, a task now under control of the World Meteorological Organization. Female names were used for Atlantic hurricanes from 1953 to 1978, with a mix of male and female names used from 1979 onwards.

In a paper titled "Female hurricanes are deadlier than male hurricanes", @jung2014female used data for 94 Atlantic hurricanes that made landfall in the United States during 1950-2012 to argue that death rates from those with female names were overall higher than for those with male names. The suggestion was that where names were female, authorities took the risk less seriously. The paper attracted wide interest on the blogosphere, with female hurricanes jokingly called herricanes and males called himmicanes.



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/hurricanes2-1.png" alt="Deaths versus damage estimate in US dollars, with logarithmic scales
               on both axes. Separate fitted lines for male and female
               hurricanes cannot be distinguished. Jung et al used a 
               logarithmic scale on the vertical axis only, which on
               this graph leads to the dashed curves." width="80%" />
<p class="caption">(\#fig:hurricanes2)Deaths versus damage estimate in US dollars, with logarithmic scales
               on both axes. Separate fitted lines for male and female
               hurricanes cannot be distinguished. Jung et al used a 
               logarithmic scale on the vertical axis only, which on
               this graph leads to the dashed curves.</p>
</div>

The separate dotted lines in Figure \@ref(fig:hurricanes1), red for female and blue for male, are a close equivalent to the authors' fit to the data. Notice the use of a relative (numbers of deaths) scale on the $y$-axis, and a dollar scale on the $x$-axis. An unfortunate consequence of the use of a linear dollar scale on the $x$-axis is that the slopes of the lines are strongly influenced by the final four points at the upper end of the scale. Why did the authors not use, at least as a starting point, the same relative scale on both axes, as in Figure \@ref(fig:hurricanes2)?

As well as using a relative scale on the $x$-axis, Figure \@ref(fig:hurricanes2) uses a methodology that allows the data to determine the form of the response. Deaths do on average increase more at a higher rate than the damage measure, but not at the rate suggested by the dashed curves. There is now no evident difference between the two curves.

Jung et al omitted `Audrey` (in 1957) and `Katrina` (in 2005), as outliers. These are included in Figures \@ref(fig:hurricanes1) and \@ref(fig:hurricanes2), with the curves fitted using a "robust" fitting method that is relatively insensitive to outliers. Other differences between the Jung et al analysis, and the analyses reflected in Figures \@ref(fig:hurricanes1) and \@ref(fig:hurricanes2) are documented in Note 1 

### Historical speed of light estimates --- is there a pattern? {.unnumbered}





<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/plot-c-data-1.png" alt="Successive speed of light estimates.  Panel B 
limits attention to measurements made in 1926 and later. 
The line was fitted with no adjustment for the very
different error estimates.  The dashed curve, which 
incorporates such adjustments, is statistically 
indistinguishable from the thick gray horizontal line."  />
<p class="caption">(\#fig:plot-c-data)Successive speed of light estimates.  Panel B 
limits attention to measurements made in 1926 and later. 
The line was fitted with no adjustment for the very
different error estimates.  The dashed curve, which 
incorporates such adjustments, is statistically 
indistinguishable from the thick gray horizontal line.</p>
</div>

Creationist Barry Setterfield has argued that a reduction over time in the speed of light has led the passage of time to slow down, relative to the remote past, so that the universe is thousands rather than billions of years old. His arguments rely on making various adjustments to figures obtained historically, selecting what he regarded as the most reliable data, and then fitting a curve.

Setterfield tells a story that, while a little different from that of the line in Panel A of Figure \@ref(fig:plot-c-data), makes equally little sense. The right panel is limited to the points from 1926 and on, marked off with the gray background on the left panel.[^08-regress-6]

[^08-regress-6]: Data are from <https://en.wikipedia.org/wiki/Speed_of_light>

For the measurements from 1862 onward, estimates of accuracy are available. Until 1950, each new estimate lay outside the bounds for the previous estimate, indicating that these were underestimates. Even if one were to accept Setterfield's manipulation of the data, it makes no sense at all to fit either lines such as are shown, or curves, to data values which have such very different accuracies.

Even if one were to accept Setterfield's manipulation of the data, it makes no sense at all to fit either lines such as are shown, or curves, to data values which have such very different accuracies as those shown in the graphs. For the measurements from 1862 onwards, estimates of accuracy are available. Until 1950, each new estimate lay outside the bounds for the previous estimate, indicating that these were underestimates.

### Global mean temperature trends

Figure \@ref(fig:climate) plots global [air and sea surface temperature anomaly data](https://iridl.ldeo.columbia.edu/SOURCES/.NASA/.GISS/.GISSTEMP/.Global/.LOTI/) against year. Anomalies, in hundredths of a degree centigrade, are differences from the 1951-1980 global average. The grey curve plots the average anomaly up to that point in time.



<div class="figure" style="text-align: center">
<img src="08-regress_files/figure-epub3/climate-1.png" alt="Anomalies (differences) in hundredths of a degree centigrade
from global average temperatures over 1951-1980, plotted against year.
The gray curve shows, for each year, the average anomaly up to that
point in time.  The last year in which this lay below the gray line
was 1962." width="80%" />
<p class="caption">(\#fig:climate)Anomalies (differences) in hundredths of a degree centigrade
from global average temperatures over 1951-1980, plotted against year.
The gray curve shows, for each year, the average anomaly up to that
point in time.  The last year in which this lay below the gray line
was 1962.</p>
</div>

Observe that 1964 was the last year in which the global temperature fell below the average to that time. For the 52 subsequent years (from 1965 to 2016 inclusive), the global average was above the average up to that date. Under the (false) assumption that global temperature is varying randomly (and therefore independently) about a common mean, the probability of this happening is 2$^{-40}$ = 9.1 $\times$ 10$^{-13}$. A variation of this argument came from a speaker on the Australian ABC Science Show on April 3 2011.

Under any model that accounts for what are now fairly well understood patterns of correlation over time, the probability, while very small, is not that small! Arguments that overstate the case for what is now a well-established pattern of change are unhelpful

It is likewise nonsensical to fit a line to the cherry-picked years 1998-2008, where the trend was relatively flat. Year to year temperatures are correlated.
