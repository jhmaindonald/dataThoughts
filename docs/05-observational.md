---
output:
  pdf_document: default
  html_document: default
---

# The uses and limits of observational data {#ch:obs}



At least in principle, it is relatively straightforward to use regression type methods to make predictions for a set of new data that have been sampled in the same way. What is hard for observational data, harder than is commonly acknowledged, is to give the model coefficients a causal interpretation. For this, it is necessary to have a clear understanding of the processes involved.

-   There will be several, perhaps a very large number, of explanatory variables, and an outcome variable.
-   The aim is to find a model that will make predictions for new data.
-   Note the predictive/descriptive distinction.\
-   Note the "in sample/out of sample" distinction.
    -   But is the "new" a random sample of the old population?\
        (Is the 'target' a random sample of the 'source'?)

## We have a prediction. What are the drivers?

The issues that arise for observational studies do not in general have clear and easy answers. Chapters 20 and 21 of @gelman2020regression canvass points that authors of those studies need to address. See also [Andrew Gelman's blog.](https://statmodeling.stat.columbia.edu/2018/11/10/matching-discarding-non-matches-deal-lack-complete-overlap-regression-adjust-imbalance-treatment-control-groups/)[^05-observational-1] There are no simple answers![^05-observational-2]. All relevant explanatory variables have to be identified, with the manner in which they may be driving predictions then teased out.

[^05-observational-1]: <https://statmodeling.stat.columbia.edu/2018/11/10/matching->

[^05-observational-2]: See also <https://mathbabe.org/2011/06/16/the-basics-of-quantitative-modeling/>

Thus, in a comparison between two groups (e..g., in Section \@ref(sec:maternity), midwife led versus medical led neonatal care) one variable or factor may be of particular interest, while other variables are used to adjust for differences between the two groups that are at most a secondary focus of interest. Variables that are of secondary interest are commonly referred to as covariates. Regression coefficients can be misleading guides to what is driving predictions if one or more of the relevant covariates is not available or is not properly accounted for. A paradox of the Yule-Simpson type, sometimes referred to as Laird's paradox, has the same potential to mislead.

Little that has been published since @RosBook clarifies greatly the advice that can be given for practical data analysis, beyond what Rosenbaum has to say. @pearl2018book ("The Book of Why") offers an interesting assessment. Pearl and his co-author do a good job of highlighting important issues that should be addressed in order to make causality judgments, at the same time overplaying what their methodology can in general achieve. If strictly implemented, the standards are so high that they severely limit what they can in practice achieve. Causality diagrams have a central role. There is a detailed, and insightful, discussion of the history that finally led to the conclusion that smoking causes lung cancer.

<!-- Pregnant mum's obesity linked to heightened bowel cancer risk in her adult offspring -->

<!-- https://medicalxpress.com/news/2021-08-pregnant-mum-obesity-linked-heightened.html -->

## Maternal obesity, and risk of colorectal cancer

Results from a study reported in @Murphygutjnl-2021-325001 suggest that maternal obesity (≥30 kg/m2) did increase the risk of colorectal cancer (CRC), by a factor of 2.51.[^05-observational-3] The authors argue that "in utero events are important risk factors for CRC and may contribute to increasing incidence rates in younger adults". They are at the same time careful to acknowledge that, as an observational study, it could not establish cause, and that factors such as diet and microbiome might explain the association. The eating habits of mothers must surely have a large effect on what children eat, both when young and later in life. To what extent might this explain the association.

[^05-observational-3]: 95% error bounds, as they are termed, run from 1.05 to 6.02, so that the 2.51 risk factor is not very clearly distinguished from 1.

Obesity is a risk factor for a variety of diseases. Is it obesity that is directly the risk? Or is it dietary and other factors that both increase the risk of obesity and of associated diseases?

## Cholera deaths in London --- 1832 to 1855

6,500 died from cholera in London in 1832. Medical opinion blamed "miasma" or noxious air, associated with the stink from rotting garbage, faeces, and pollution in the Thames. Poor areas had higher rates of cholera, thought to be a result of the more noxious air that arose from crowding and poorer sanitation. Human excreta went into cesspits, with night-soil periodically taken away.[^05-observational-4] In 1842, [Edwin Chadwick, in The Sanitary Conditions of the Labouring Population (1842)](https://www.sciencemuseum.org.uk/objects-and-stories/medicine/cholera-victorian-london)[^05-observational-5] showed a direct link between poor living conditions, disease and life expectancy.

[^05-observational-4]: See *Cholera epidemics in Victorian London*\newline <https://www.thegazette.co.uk/all-notices/content/100519>

[^05-observational-5]: <https://www.sciencemuseum.org.uk/objects-and-stories/medicine/cholera-victorian-london>

Under the assumption that miasma from the cesspools and raw sewage pits was the source of infection, the 1848 Nuisances Removal and Diseases Prevention Act[^05-observational-6] was passed that led to the dumping of the raw sewage into the Thames, which was London's main source of drinking water. The 1848-49 epidemic followed shortly after the cesspits were banned. @hassall1850memoir, in a careful microbiological study, commented:

[^05-observational-6]: Gazette issue 20637

> ... a portion of the inhabitants are made to consume ... a portion of their own excrement, and ... to pay for the privilege.

### By air, or by water --- the 1849 epidemic {.unnumbered}

Farr, who worked as statistician in the UK Registrar General's  office, collected data on deaths from cholera in London in the 1849 epidemic. Farr classified districts into three groups thus,\
according to the source of the water for most of the householders:

1)  Lower Thames, coded as `Battersea`;\
2)  Sources away from the Thames, coded as `NewRiver`;\
3)  Further up the Thames than `Batersea`, where the water was less polluted, coded as `Kew`.

Figure \@ref(fig:Farr) summarizes results from a regression analysis that used Farr's data. None of the terms stands out as substantially more important than any other. Higher rates for the poor, where crowded conditions would commonly make it difficult to maintain hygiene, were to be expected.



<div class="figure" style="text-align: center">
<img src="05-observational_files/figure-epub3/Farr-1.png" alt="Each panel shows, in turn, the estimated contribution
of a term in the model relative to the mean contribution from 
other model terms. Changes in deaths are on a `log` scale, so 
that an increase by one unit multiplies the odds of death by 
close to 2.7, around an overall mean of just over six per 1000.
" width="100%" />
<p class="caption">(\#fig:Farr)Each panel shows, in turn, the estimated contribution
of a term in the model relative to the mean contribution from 
other model terms. Changes in deaths are on a `log` scale, so 
that an increase by one unit multiplies the odds of death by 
close to 2.7, around an overall mean of just over six per 1000.
</p>
</div>

@snow1849mode gave examples that he had observed directly, where the likely means of transmission of the infection appeared to be a water source, or poor hygiene. He argued that those living close to the Thames, and especially in the South, were more likely to be getting their water that was contaminated with human excreta. Contaminants had more time to settle in water that was piped up to higher ground.

Farr took Snow's arguments seriously, but in his 1852 report argued that water was primarily important as a vehicle for miasmata. He would later, by the time of an 1866 epidemic when Snow was dead, be one of the waterborne theory's few champions.[^05-observational-7]

[^05-observational-7]: @eyler1973william

A context has to be provided in which to interpret regression results such as those shown in Figure \@ref(fig:Farr). Snow's understanding of the contextual information was not, in 1852, sufficiently compelling to persuade other medical specialists. Data from the 1854 epidemic, which allowed a comparison of deaths supplied from a company that continued to get its supply from lower highly polluted Thames water with that from the company that had moved its supply higher up to less polluted water, seems in retrospect to clinch the issue, but did not at the time convince most of the medical profession.[^05-observational-8] The perspective brought by germ theory had to wait for the work of Pasteur in the late 1850s and Koch in the 1880s.

[^05-observational-8]: See @eyler2004changing for further comment.

### The 1854 epidemic --- a natural experiment {.unnumbered}

Two water companies --- Lambeth, and Southwark and Vauxhall, had been taking water from the same polluted source. An 1852 act required water supply companies to move water intake upriver by 1855. By the time of the 1854 epidemic, Lambeth had moved its intake 22 miles upriver, while the Southwark and Vauxhall intake was unchanged until 1855. Data on the distribution of cholera in the 1854 epidemic then allowed Snow to test the claims made in his 1849 study.

\scalebox{1.12}{
\begin{tabular}{lrrr}
  \hline
 & \#Houses & \#Deaths & Rate per 10,000 \\ 
  \hline
Southwark \& Vauxhall & 40046 & 1263 & 315 \\ 
  Lambeth & 26107 & 98 & 37 \\ 
  Rest of London & 256423 & 1422 & 59 \\ 
   \hline
\end{tabular}
}

> The experiment, too, was on the grandest scale. No fewer than 300,000 people ..., from gentlefolks down to the very poor, were divided into two groups without their choice, and, in most cases, without their knowledge; one group being supplied with water containing the sewage of London, and, amongst it, whatever might have come from the cholera patients, the other group having water quite free from such impurity. [@snow1855mode]

### Use water from the brewery, and stay healthy! {.unnumbered}



<div class="figure" style="text-align: center">
<img src="05-observational_files/figure-epub3/pump-1.png" alt="Deaths (red dots) and pump locations.  Polygons that surround
each pump enclose the locations for which that is the nearest pump." width="60%" />
<p class="caption">(\#fig:pump)Deaths (red dots) and pump locations.  Polygons that surround
each pump enclose the locations for which that is the nearest pump.</p>
</div>

Snow noted that “Within 250 yards of the spot where Cambridge Street joins Broad Street there were upwards of 500 fatal attacks of cholera in 10 days…”. By contrast, none of the employees of a local Soho brewery developed cholera. The reason, he judged, was that they drank water from the brewery (which had a different source from the Broad St pump) or just drank beer alone.\
@coleman2019causality gives detailed comments on Snow's work.

New Zealand cities had similar issues from the 1840s and 1850s through until the end of the century, arising from failures to install proper drainage systems.[^05-observational-9]

[^05-observational-9]: See Christine Dann: 'Sewage, water and waste - Stinking cities', Te Ara - the Encyclopedia of New Zealand, (8 June 2017) <https://teara.govt.nz/en/zoomify/24431/dunedin-renamed-stinkapool>

## Are there missing explanatory factors? {#sec:maternity}

The [@wernham_EtAl_2016] study used data from 244,047 singleton term deliveries that occurred between 2008 and 2012 to make the claim that midwife led care, as opposed to medical led care, gave a greater risk of adverse fetal and neonatal outcomes. Notably, the claim was that midwife led care resulted in a lower Apgar score (a measure of infant health immediately after birth) and a greater risk of the imprecisely defined diagnosis of birth asphyxia.

This study was then the basis for exaggerated claims in an article in the October 8-14 2016 issue of the NZ Listener [@chisholm_2016 "Birth Control"]. Contrary to what was claimed, the research did not "lob a grenade into the historically war-torn territory of New Zealand's maternity care." Even less did its results warrant the melodramatic claims of "Alarming maternity research" and "Revolution gone wrong" that appeared on the Listener's front cover.

A major issue with the analysis is that it relies on using the NZ Deprivation Index[^05-observational-10] to adjust for socioeconomic differences. This provides a deprivation score for meshblocks, each of around 60–110 people. It estimates the relative socioeconomic deprivation of an area, and does not directly relate to individuals. Deprived areas will often include some individuals with high socioeconomic status. Caesarean section, as a delivery type, may well have been more accessible for those of higher socioeconomic status. For National Women's in Auckland, the elective Caesarean rate at term over 2006-2015 for doctor-led care was 32.8%, as against 7.4% for self employed midwives [@farquhar2016letter]. Effects from fetal alcohol syndrome were not accounted for, nor were direct effects from substance abuse. International data indicates that fetal alcohol syndrome may affect as many as 3% of births.[^05-observational-11]

[^05-observational-10]:  <https://www.health.govt.nz/publication/nzdep2013-index-deprivation>

[^05-observational-11]: <https://www.health.govt.nz/our-work/diseases-and-conditions/fetal-alcohol-spectrum-disorder>

Studies that are similarly relatively carefully done, but naive in the weight placed on the regression results, are embarrassingly common. There are analysis tools, and associated graphs, that the authors of the study could and should have used to shed light on the likely effectiveness of the adjustments made for differences between the two groups, other than whether the delivery was midwife led or medical led.

## The uses and traps of rule-based methods

Figure \@ref(fig:seeSpam) shows the distributions of values of six variables that have been selected for use for present illustrative purposes, from an historical dataset (pre 1999, now long past its "use by" date) that has data on 4601 email messages, of which 1813 were identified as spam. In practical use, such datasets have to be continually updated as spammers change their strategies



<div class="figure" style="text-align: center">
<img src="05-observational_files/figure-epub3/seeSpam-1.png" alt="Boxplots, showing distribution of variable values
               in data used to predict email spam"  />
<p class="caption">(\#fig:seeSpam)Boxplots, showing distribution of variable values
               in data used to predict email spam</p>
</div>

Two types of decision tree approaches will be discussed --- the use of individual decision trees, and the random forest approach which generates and uses large numbers of trees in the decision making process.

Figure \@ref(fig:spam) shows a decision tree that has been derived for the spam data.



<div class="figure" style="text-align: center">
<img src="05-observational_files/figure-epub3/spam-1.png" alt="Decision tree for spam data. If the condition is satisfied, take
               the branch to the left.  Otherwise, take the branch to the right." width="48%" /><img src="05-observational_files/figure-epub3/spam-2.png" alt="Decision tree for spam data. If the condition is satisfied, take
               the branch to the left.  Otherwise, take the branch to the right." width="48%" />
<p class="caption">(\#fig:spam)Decision tree for spam data. If the condition is satisfied, take
               the branch to the left.  Otherwise, take the branch to the right.</p>
</div>

The tree in Figure \@ref(fig:spam) would be too inaccurate for practical use, even suitably updated with new data, but it is easy to follow the decsion tree process.

### From trees to forests {.unnumbered}

"Random forests" improve on decision trees by using samples from the data to create a forest (a "random forest") of trees, then voting between the trees. A downside is that "Random forests" and similar methods operate largely as black boxes. For detection of spam email, this may, as those who deploy the spam detectors have little idea what may be going on in the minds of the spammers, not be too much of an issue. One wants a spam detector that will respond effectively to whatever is thrown at it.

### It helps to know the how and why of the algorithms used {.unnumbered}

Both decison trees and random forests follow an *algorithmic* process. The relatively "black box" nature of the random forest approach places an especially strong burden on the analyst to ensure relevant data have been used, and that the algorithm really is doing its intended task. In her book "Weapons of math destruction", @oneil_2016 comments:

> ... it’s not enough to just know how to run a black box algorithm. You actually need to know how and why it works, so that when it does’nt work, you can adjust.

This is too strong. But if one does not know the how and why of how an algorithm works, it is absolutely crucial to be sure that the data used to fit and test the model (the "training" and "test" data) are directly relevant to the task in hand.

Automated systems that can be easily gamed do, however, abound. They are a menace!
