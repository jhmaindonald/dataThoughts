---
output:
  pdf_document: default
  html_document: default
---

# Effective use of graphs



## General principles

-   Focus the eye on features that are important
-   Avoid distracting features
-   Lines that are intended to attract attention can be thickened
-   Where points should be the focus, make them large & dark
    -   It often makes sense to de-emphasize the axes.
-   If points are numerous and there is substantial overlap, use open symbols, and/or use symbols that have some degree of transparency.
-   Different choices of color palettes are effective for different purposes.
-   Bear in mind that the eye has difficulty in focusing simultaneously on widely separated colors that are close together on the same graph.

## Varying time intervals --- show rates, not counts

A graph that was essentially the solid segmented solid line in Figure \@ref(fig:Nobel) appeared in @national1975science "Science Indicators, 1974". The segmented line gives a highly misleading impression for the four years 1971-1974, as opposed to earlier points, where numbers are totals over decades. It joins up a final point that is a different measure from earlier points.

The gray dots, and the axis on the right, show rates per year, thus comparing like with like.



<div class="figure" style="text-align: center">
<img src="02-graphs_files/figure-epub3/Nobel-1.png" alt="The black line shows numbers of US Nobel prizes, for given time intervals. The gray dots. with the right axis label, show average per year." width="80%" />
<p class="caption">(\#fig:Nobel)The black line shows numbers of US Nobel prizes, for given time intervals. The gray dots. with the right axis label, show average per year.</p>
</div>

The same principle applies for intervals of measures other than time --- for example of length or volume.

## Banking --- the importance of aspect ratio



<div class="figure" style="text-align: center">
<img src="02-graphs_files/figure-epub3/Banking-1.png" alt="The same data are used for both graphs.  The pattern that is not
obvious in Panel A is very obvious in Panel B" width="100%" />
<p class="caption">(\#fig:Banking)The same data are used for both graphs.  The pattern that is not
obvious in Panel A is very obvious in Panel B</p>
</div>

Patterns of change on the horizontal scale that it is important to identify should bank at an angle of roughly 45^o^ above or below the horizontal. Angles in the approximate range 20^o^ to 70^o^ may be satisfactory, and the aspect ratio should be chosen accordingly.

## Scales that show changes by equal multipliers

Figure \@ref(fig:animals) shows two plots of the same data. Panel A plots brain weight (grams) against body weight (kilograms), for 28 "animals". Panel B plots the same data, but now equal distances on each scale show changes by the same factor (i.e., change in relative weight).



<div class="figure" style="text-align: center">
<img src="02-graphs_files/figure-epub3/animals-1.png" alt="Panel A plots brain weight (grams) against body weight 
(kilograms), for 28 'animals'.  Panel B plots the same data, 
with relative weight scales, i.e., equal distances on each scale 
show changes by the same multiplier." width="100%" />
<p class="caption">(\#fig:animals)Panel A plots brain weight (grams) against body weight 
(kilograms), for 28 'animals'.  Panel B plots the same data, 
with relative weight scales, i.e., equal distances on each scale 
show changes by the same multiplier.</p>
</div>

Often, when measurement data span a large range (e.g., a change from smallest to largest by a factor of 100 to 1 or more), it is a relative amount scale that is appropriate.[^02-graphs-1]

[^02-graphs-1]: Technically, such scales are termed logarithmic, as opposed to straight line or linear. A logarithmic transformation is used to obtain such relative distance scales.

## Different graphs serve different purposes {#track}

The line in Figure \@ref(fig:resid)A shows the broad overall pattern, while Figure \@ref(fig:resid)B shows how that pattern needs to be tweaked to more closely reflect the data.



<div class="figure" style="text-align: center">
<img src="02-graphs_files/figure-epub3/resid-1.png" alt="Panel A plots world record Time (as of 2006, in minutes)
against Distance (in kilometers), for field races.  On both the
`x` and `y` axes, the scale is one on which equal distances on 
the scale correspond to equal relative changes.  Panel B plots
deviations from the fitted line in the `y` direction, otherwise
known as residuals, against Distance. The deviations are
approximate relative differences from the line.  Thus a 0.05
difference is a difference that amounts to 5\% of the time
predicted by the line." width="100%" />
<p class="caption">(\#fig:resid)Panel A plots world record Time (as of 2006, in minutes)
against Distance (in kilometers), for field races.  On both the
`x` and `y` axes, the scale is one on which equal distances on 
the scale correspond to equal relative changes.  Panel B plots
deviations from the fitted line in the `y` direction, otherwise
known as residuals, against Distance. The deviations are
approximate relative differences from the line.  Thus a 0.05
difference is a difference that amounts to 5\% of the time
predicted by the line.</p>
</div>

Notice, in Panel A, the use of scales for which which equal distances on the scale correspond to equal relative changes. This is achieved by specifying logarithmic scales, on both axes. There is a loglinear, i.e., straight line on logarithmic scales, relationship.

In Figure \@ref(fig:resid), the line looks to be a good fit. The range of times is however large, from just under 10 seconds to close to 11.5 hours. All except the largest difference from the fitted line are a less than 7% change, and are not at all obvious in Panel A. There is a very clear pattern of systematic differences in Panel B that reflects differences in human physiology, very likely between the athletes who excel at the different distances.

The line can be interpreting as implying a 13% increase in the time per unit distance for every unit increase in the distance. The units may for example be units of 100 meters, or kilometers. Panel B indicates that the pattern of increase moves down to a local minimum at around 200 meters, up to a local maximum at around 1 kilometer, down again to a local minimum at around 20 kilometers, and then steadily up again.

### Relative distance scales {.unnumbered}

Figure \@ref(fig:lnscales) shows different "equal physical distance along the scale" labels that might be used for the relative `Distance` ("logarithmic") scale in Figure \@ref(fig:resid) in Subsection \@ref(track).



<div class="figure" style="text-align: center">
<img src="02-graphs_files/figure-epub3/lnscales-1.png" alt="Different labelings, all with tick marks at the same
relative distance apart, are shown for the `Distance` scale.
The multipliers for the `Distance` values that are plotted are,
starting at the bottom, 2, 4, 5, and 10." width="60%" />
<p class="caption">(\#fig:lnscales)Different labelings, all with tick marks at the same
relative distance apart, are shown for the `Distance` scale.
The multipliers for the `Distance` values that are plotted are,
starting at the bottom, 2, 4, 5, and 10.</p>
</div>

## Helpful web links are:

-   Good & bad graphs (Ihaka, lecture notes)[^02-graphs-2]
-   Misleading graphs[^02-graphs-3]
-   Color Brewer[^02-graphs-4]

[^02-graphs-2]: https://www.stat.auckland.ac.nz/\~ihaka/120/Lectures/lecture03.pdf

[^02-graphs-3]: https://www.statisticshowto.com/misleading-graphs/

[^02-graphs-4]: https://colorbrewer2.org/
