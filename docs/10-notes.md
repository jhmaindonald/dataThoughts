---
output:
  pdf_document: default
  html_document: default
---

# Notes

## 1. The @jung2014female US hurricane data {#hurricanes .unnumbered}

Figures \@ref(fig:hurricanes1) and \@ref(fig:hurricanes2) checked for a difference between the fitted male and female line or curve. Jung et al's approach was, instead, to examine whether numbers of deaths varied with the "femaleness" of name, as judged by students in 2014.

As a check on how the popularity of a name for each of females and males may have changed with time, Table \@ref(tab:changetab) uses US social security administration data to show numbers for names where the range of variation over 1950 to 2012 in the relative number of females was 0.08 or more.




Table: (\#tab:changetab)The minimum and maximum value of the relative proportion
of female names, and the difference, are shown for the eight names
that showed the greatest change over the years 1950 to 2012.

|           | Fran| Charley| Cleo| Sandy| Erin| Inez| Carmen| Bret|
|:----------|----:|-------:|----:|-----:|----:|----:|------:|----:|
|Minimum    |    0|    0.00| 0.39|  0.68| 0.84| 0.86|   0.88| 0.00|
|Maximum    |    1|    0.87| 0.94|  0.95| 0.99| 1.00|   0.98| 0.08|
|Difference |    1|    0.87| 0.55|  0.28| 0.15| 0.14|   0.10| 0.08|

In other cases, relative number of females were always either in the range 0 to 0.07 (i.e., mostly female), or in the range 0.93 to 1 (i.e., mostly female).

Figure \@ref(fig:plotchanges) shows how the numbers of each sex changed over time, for the first six of the names in Table \@ref(tab:changetab).



<div class="figure" style="text-align: center">
<img src="10-notes_files/figure-epub3/plotchanges-1.png" alt="Change in numbers of names given to males and females
over the years 1950 to 2012, for the six names where the 
maximum difference in relative frequency was more than 0.1.
The maximum change is shown against each name." width="90%" />
<p class="caption">(\#fig:plotchanges)Change in numbers of names given to males and females
over the years 1950 to 2012, for the six names where the 
maximum difference in relative frequency was more than 0.1.
The maximum change is shown against each name.</p>
</div>

The names where the choices of parents at the time are likely to most different from that for students in 2014 are those where there has been greatest change over time (i.e., especially, Charley, Cleo and Fran).

\enlargethispage{21pt}

Other differences from the analyses on which Figures \@ref(fig:hurricanes1) and \@ref(fig:hurricanes2) were based are

-   As the primary measure of the risk posed by the hurricanes, the authors used a 2013 US\$ estimate of damage, intended for insurance purposes, for a comparable hurricane in 2013. Figure \@ref(fig:hurricanes1) uses what is surely the more relevant measure, namely `NDAM2014` --- this converts the estimate of damage caused at the time to 2014 US\$.[^10-notes-1]
-   Jung et al allowed for minor effects from barometric pressure at landfall, and interactions. Again, these do not affect the conclusions reached.

[^10-notes-1]: Fortuitously, this change makes no difference of consequence to the graph or to the conclusions reached.





## 2. $^*$What does a $p$-value tell the experimenter? {#pval .unnumbered}

$P$-values are widely used to indicate whether a difference. What follows introduces technicalities that have been avoided in the preceding chapters.

Consider an experiment that compares a treatment with a control. For example, does taking a drug of interest reduce sleeplessness? The starting point for a $p$-value calculation is the NULL hypothesis assumption of no difference in effect between treatment and control. A $p$-value measures the probability that a difference in measured effect as large as that observed, or larger would, assuming the NULL hypothesis, occur by chance. The definition says nothing about the $p$-value that can be expected if there is a difference. It does not give, as is sometimes thought, the probability that there really is no difference.

Issues for understanding the meaning of a $p$-value are:

-   Finding $p \leq 0.05$ is all very well. What one really needs to know is that there is an alternative that is substantially more likely.
-   $p = 0.05$, or close to 0.05, is at the upper end of the range of $p$-values that occur with a probability of 0.05. Treating $p = 0.05$ as an event that occurs with probability 0.05 under the NULL exaggerates the evidence that it provides against the NULL.
    -   In fact, under the NULL, all values between 0 and 1 are equally likely!
-   Prior probabilities matter. If for example the data is from one of a set of drug trials where 99 out of 100 can be expected to show no effect, the 99 out of 100 instances where there is a 1 in 20 change of $p$ \<= 0.05 have to be set again 1 out of 100 instances where there is a potential to detect an effect. A $p$ \<= 0.05 is more than 99/20 = 4.95 times as likely to come from a drug with no effect as from one that has a real effect.
    -   What size of effect is, based on whatever is known from past comparable investigations, likely? A reasonable default is to center the distribution on zero, with values that become increasingly less likely as the distance from zero increases. Under plausible assumptions of this general type, it can be shown that with $p$=0.05, the prior relative likelihood should be multiplied by, at most, around 2.5.[^10-notes-2]

[^10-notes-2]: See <https://statisticsbyjim.com/hypothesis-testing/interpreting-p-values/>
