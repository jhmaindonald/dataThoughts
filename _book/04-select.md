# Selection and survivor bias

In mind here are cases where the data are not a random sample.

## The hazards of convenience samples

Quota sampling has often been used as an alternative to random
sampling --- quotas are set for age categories, male/female,
and socioeconomic categories that are designed to ensure that
the sample is representative of the wider population.
In polls prior to the 1948 US presidential election that pitted 
democrat Harry Truman against republican Thomas Dewey, 
pollsters were given strict quotas, but otherwise left free to
decide who they would approach.  Polls by three different 
organizations gave Dewey a lead of between 5% and 15%.  In the
event, Truman led by 5%.

### Convenience samples sometimes have a story to tell

This is no to rule out all use of convenience samples.
Convenience samples, taken within a limited population, can
sometimes be useful in setting a lower bound.
It is strongly in the public interest that scientists have 
reasonable freedom for responsible expression of their minds 
on issues of public concern. In an informal 2015 survey, 151 
Crown Research Institute scientists (out of 384 who responded) 
answered yes to the question “Have you ever been prevented 
from making a public comment on a controversial issue by your 
management’s policy, or by fear of losing research funding?”
The 384 who responded will undoubtedly be a biased sample.
Irrespective of the size of the bias, the number who had not
been allowed to speak their mind was large enough to be a cause
for serious concern.  Hon Joyce’s response, to the effect that 
as this was not a scientific survey of all CRI scientists 
(to this extent, true), its evidence of large concern could be 
ignored, was an evasion. Equally disturbing was the reaction 
of the NIWA management, suggesting that they did not accept a 
responsibility to defend transparency.^[See <https://sciblogs.co.nz/infectious-thoughts/2015/08/28/niwa-in-astonishing-attack-on-scientist-association/>]

## UK cotton worker wages in the 1880s

Prior to the @boot2008new paper^["New estimates of age- and sex- specific 
earnings and the male-female earnings gap in the British cotton 
industry, 1833-1906"] the main source of published information on 
cotton worker wages in the UK in the late 19th century were results
from an 1889 US Bureau of Labor survey, intended for use for
comparison with the US cotton industry wages.
Figure \@ref(fig:cotton) compares the US Bureau of Labor survey 
numbers with 1886 census numbers of different types of full time 
UK cotton operatives.


```r
cap22 <- "Cotton worker wages in the UK --- 1889 US Bureau of Labor 'survey'
versus 1886 census data. Wages are in pence per week."
```


```r
## detach("package:latticeExtra")
suppressPackageStartupMessages(library(ggplot2, quietly=TRUE))
cottonworkers <- DAAG::cottonworkers
names(cottonworkers)[3] <- "Av_wage"
cottonworkers$occ <- row.names(cottonworkers)
cottonworkers$occ[cottonworkers$census1886<2500] <- ""
cottonworkers$occ2 <- row.names(cottonworkers)
cottonworkers$occ2[!cottonworkers$census1886 %in% c(208, 1250:2500)] <- ""
gph <- ggplot(cottonworkers,
              aes(census1886,survey1889,label=occ,
                  size=Av_wage, hjust=1))+ 
  geom_abline(intercept=0, slope=0.00986, color="gray") +
  geom_point()+
  geom_text(size=4,nudge_x=-180) +
  geom_text(aes(y=survey1889+rep(c(5,-5),c(7,7)), label=occ2), 
            size=4, hjust=0, nudge_x=100) +
  xlab("Number in 1886 census") + ylab("Number in 1889 survey")
leg <- matrix(c("The line shows what 1899",
                "survey numbers would be,",
                "if relative numbers in",
                "worker categories were",
                "as in the 1886 census"), ncol=1)
library(gridExtra)
tt <- ttheme_minimal(base_size=12, 
                     core = list(fg_params=list(hjust = 0, x=0)))
gph + annotation_custom(tableGrob(leg, theme=tt), 
                       xmax=3600, ymin=100, ymax=150)
```

<div class="figure">
<img src="04-select_files/figure-epub3/cotton-1.png" alt="Cotton worker wages in the UK --- 1889 US Bureau of Labor 'survey'
versus 1886 census data. Wages are in pence per week."  />
<p class="caption">(\#fig:cotton)Cotton worker wages in the UK --- 1889 US Bureau of Labor 'survey'
versus 1886 census data. Wages are in pence per week.</p>
</div>

The 1889 survey shows some strong biases --- a result it 
would seem of geographical bias and of the informal data 
collection methods that were used.  The high wages given to 
spinners were grossly over-weighted in the US Bureau of
Labor survey, while Big Piecers and Weavers were grossly
under-represented.  A guess is that workers were asked for
information on their wages as they left work, and that
the survey personnel happened to catch employees at a time
when there was a large preponderance of highly paid spinners, 
and an untypically small number of big piecers and weavers.
The net effect was a gross over-estimate of average wages.

## How good a guide does the past provide to the future?

There is a mix of selection and survivor bias arise when data 
from the past are used as a guide to the future, with no 
allowance for the source/target difference.  The target about 
which we wish to make judgments lies in the future, while the 
data are from the past.  Think about a business that is 
planning for the future.  One can never know, until after the 
event, all the ramifications of the choices made.

Businesses may be selected as examples of effective business
practice because they were, at the time when the data were 
collated, successful.  Likewise, it is athletes who have
been successful in the recent past who are likely to be
selected to appear on the covers of sports magazines.
In either case, this gives a biased picture of what can be
expected in the future  --- in many cases those who are
picked out will be close to the peak of their success, 
and/or have had unusual luck. High levels of success in 
the recent past will not always translate into success
in the following year or years.  How often will past
success translate into future success?  In order to
discover, it is necessary to collect relevant data.

Subsection \ref{ss:wald} will discuss a widely cited example
of survivor bias that relates to the relative density
of bullet holes, in different parts of the plane, in planes 
that had returned from battle in World War II.  The key to
interpreting the data was to recognize that these were the
planes that had survived.

## Tales of standout past success (pp.38--39)

### @collins_2001 --- Good to Great {-}

* From 1,435 companies, Collins identified 11 as standouts
    + Since 2001, 5 better than average; 6 worse
    + Fannie Mae --- 2001: >$80 per share: 2008: <$1
    + Circuit City: Bankrupt in 2009

### @waterman1982search --- In Search of Excellence {-}

* 43 successful companies: 
    + "Bias for action"; "Close to consumer"
* From the 35 that were publicly listed:    
    + Since 1982: 15 better than average; 20 worse
    
In all cases, companies that were chosen as examples of
standout success were likely to be near to the peak of
their performance, as judged by Collins, or by Waterman and Peters.
Overlaid on this is the regression effect that will be discussed
in Chapter \ref{sec:reg}.

## Damaged planes --- how were the data generated? {#ss:wald}

Abraham Wald's insight was that survivor bias was to be 
expected, with the density of bullet holes providing evidence 
about the extent of bias, and the implications for identifying
the part(s) of the planes that would benefit most from
additional protection. See [Abraham Wald and the Missing Bullet Holes](https://medium.com/@penguinpress/an-excerpt-from-how-not-to-be-wrong-by-jordan-ellenberg-664e708cfc3d)^[<https://medium.com/@penguinpress/an-excerpt-from-how-not-to-be-wrong-by-jordan-ellenberg-664e708cfc3d>],
which is an excerpt from @ellenberg_2015.

The numbers of hits per square foot were:

```r
c('Engines'=1.11, "Fusilage"=1.73,"Fuel system"=1.55, "Rest of plane"=1.8)
```

```
##       Engines      Fusilage   Fuel system Rest of plane 
##          1.11          1.73          1.55          1.80
```
It was not possible to fit protective plates everywhere, 
as this would have made the planes overly heavy?  Wald argued
that the holes very likely were spread pretty much uniformly 
over the planes as a whole, those that were shot down, and those 
that survived, The reason for relatively fewer bullet holes in 
the engine and fuel system areas was that hits in those areas 
were more likely to bring the plane down, so that they did not 
return.
