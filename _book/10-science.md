# The critique of scientific claims

An ideal is that scientific processes will keep to a minimum
the publication of claims that are not supported by evidence.
Like anything designed by humans, and put into practice by 
humans, this is not precisely how it works in practice.
Notwithstanding peer review processes that are designed to 
ensure that claims made in scientific papers withstand 
careful scrutiny, the traps and fallacies described in these 
notes, and more besides, are found in the scientific literature.
The effectiveness of the peer review process varies widely from
one area of science to another.

## What results can be trusted?

Scientific processes work best when claims made by one scientist
or group of scientists attract widespread interest and critique
from the wider group of scientists who work in the same general
area. Examples are the May 2020 Lancet and New England Journal of 
Medicine papers arguing that use of the drug hydroxychloroquine 
as a treatment for Covid-19 was increasing patient deaths.  
Issues with these papers were quickly identified because they 
made claims that bore on an issue of major concern, and attracted 
attention from readers who carefully scrutinized their detailed 
statements. They were quickly retracted.

Heavy reliance on the sharing of data and skills, and full use of 
the benefits that modern technology has to offer, have been vital 
to progress in such areas as earthquake science, the study of 
viruses and vaccines, modelling of epidemics, and climate science.
This sharing of data and skills, and use of modern technology, also
helps in the critique of what has been published earlier.
Areas where there has not been the same impetus for change are much 
more susceptible to the damage that arises from systems for funding 
and publishing science that encourage the formal publication of
what would better be treated as preliminary results --- a first
stab at an answer.  Publication of experimental results should not 
be a once-for-all event, but a staged process that moves from 
“this looks promising” to “has been independently replicated”, 
and to post=publication critique.

Publication does not of itself validate scientific claims,
Rather, as stated in @popper_1963

> Observations or experiments can be accepted as supporting a theory (or a hypothesis, or a scientific assertion) only if these observations or experiments are severe tests of the theory – or in other words, only if they result from serious attempts to refute the theory. 

## A look at what can go wrong

Fraud, though uncommon, happens more often than one might hope.
What is disturbing is the small number of scientists with
large numbers of papers that were retracted on account of
fraud.  How were they able to get away with publishing so
many papers, usually with fraudulent data, before the 
first identification of fraud that led to a checking of all
their work?  @ritchie2020science (pp67-68) cites, as an 
extreme example, the case of a Japanese anesthesiologist 
with 183 retracted papers.

More common are mistakes in data collection, unacknowledged 
sources of bias, hype, mistakes or biases in the handling of 
data and/or in data analysis, attaching a much higher
degree of certainty to statistical evidence than the results
warrant, and selection effects.  Selection effects can work
in various ways --- selection of a subset of data where
there appears to be an effect of interest, choice of the
outcome variable and/or analysis approach that most nearly
gives the result that is wanted, and so on. In analysis of
data from experiments where two treatments are compared,
the common use of the arbitrary $p <= 0.05$ criterion 
(see the next subsection) as a cutoff for deciding what 
will be published has the inevitable effect of selecting out, 
in contexts where there was no difference of consequence
one in twenty of such results for publication.  This adds
to other selection effects.

## The case of Eysenck and his collaborators

At the time of his death in 1997, Eysenck was the living psychologist 
most frequently cited in the peer-reviewed scientific literature.
Much of his work was controversial in its time, with papers
containing "questionable data and results so dramatic they beggared 
belief" [o2020famous].  He relied heavily on what has now been 
identified heavily doctored data that was supplied to him by
German collaborator Grossarth-Maticek.  Particularly egregious was
the claim that individuals with an identifiably cancer-prone personality 
had a risk of dying from cancer that was as much as 121 times higher 
than that of people with a “healthy” personality --- one of several 
links that the duo claimed to have found between personality and
mortality.  Investigations into Eysenck's work, including 
collaborative work with Grossarth-Maticek, are ongoing.  Fourteen 
papers have been retracted, and another 71 have received 
"expressions of concern".  A large replication study conducted in 
2004 found none of the claimed links, apart from a modest link between 
personality and cardiovascular disease. 

## The use of artificial intelligence to detect Covid-19

@roberts2021common identified an astonishing 320 papers and preprints
that appeared between 1 January 2020 to 3 October 2020, and which
describe the use of new machine learning models for the diagnosis of
COVID-19 from chest radiographic (CXR) and chest computed tomography 
(CT) images.  Quality screening reduced this number to 62, which were
then examined in more detail. None of the 62 satisfied these more
detailed requirements, designed to check whether the algorithms used
had been shown to be effective for use in clinical practice.  Among
other deficiencies, 48 did not complete any external validation, and 
55 had a high risk of bias with respect to at least one of 
participants, predictors, outcomes and analysis. In a popular account
of the results that appeared in New Scientist, @roberts2021machine 
comments that, relative
to persisting to develop a model that will survive a rigorous 
checking process and might be used in practice, "it is far easier
to develop a model with poor rigour and [apparent] excellent
performance and publish this."  This is a damming indictment of
the way that large parts of the research and publication process
currently work.  The public good would be much better served
by a process that encourages researchers to persist until it
has been demonstrated that researchers have a model that meets
standards such as are set out in @roberts2021common.  One may
hope that one result of this work will be to shift the research
and publication focus accordingly.

## Laboratory experimental science --- what do we find?

In the past several years, there has been a steady accumulation
of evidence that relates to the claim, in @r19_ioannidis_2005,
that "most published research findings are false".  Ioannidis
has in mind, not published results in general, but primarily
laboratory studies.  Papers that have added to the 
body of evidence that broadly support claims made in the 
Ioannidis paper include:

* Amgen: Reproduced 6 only of 53 'landmark' cancer studies.
    + @r23_begley_ellis_2012
    + @r2_begley_2013 notes issues with the studies that failed
* Bayer: Main results from 19 of 65 'seminal' drug studies
    + NB, journal impact factor was not a good predictor!
    + @r9_prinz_schlange_asadullah_2011
* fMRI studies: 57 of 134 papers (42%) had $\geq$ 1 case lacking
check on separate test image. 
Another 14%, unclear ...
    + @r8_kriegeskorte_simmons_bellgowan_baker_2009
   
The psychological science community is further advanced in
addressing these issues that many other communities, with 
The Center for Open Science (COS) taking a strong lead in 
studies designed to document the extent of the issues.

Other Center for Open Science (COS) Projects have been:

* Many Labs --- reproduce 13 classical psych studies
    + Of  13 studies --- 10: successful, 1: weakly, 2: no!
    + Plots show scatter across the 36 participating teams 
    + @r7_klein_others_2014
* Cancer Studies --- 50 "most impactful" from 2010-2012
    + @r5_kaiser_2015

Details from other relevant studies are given in the
recent book @ritchie2020science "Science fictions: Exposing 
fraud, bias, negligence and hype in science."
Problems arise, primarily, in areas where relatively small 
groups of scientists, with similar training and skills, work
independently.  The critiques have limited relevance to
areas where the nature of the work forces collaboration
between scientists with diverse skills, widely across
different research groups.

Even with such checks as there are on published research, it is
clear that not everything that passes the peer review process
can be relied on.  The case is far worse for claims made, often
for reasons of commercial gain, who have no evidence at all for
the effectiveness of the therapy or remedy that they promote.

## The Reproducibility: Psychology project

Figure \@ref(fig:effect-size) summarizes evidence from
the Reproducibility: Psychology project [@r1_osc_EstRep2015].
The effect size is the difference between the two means that
are to be compared, divided by the pooled standard deviation
for the two groups.

* It chose 100 studies (3 journals, 2008)
* There was one replicate only of each study
* Initial results: 39 agree + 24 ? "similar" + 37 fail



<div class="figure">
<img src="10-science_files/figure-epub3/effect-size-1.png" alt="Psychology reproducibility project --- Effect sizes are
compared between the replication and the initial study." width="70%" />
<p class="caption">(\#fig:effect-size)Psychology reproducibility project --- Effect sizes are
compared between the replication and the initial study.</p>
</div>

Notice that the effect size is almost always smaller for
the replication.  A smooth curve, with confidence interval,
has been fitted for results in social psychology.  Notice 
that, for social psychology, it is only for an original 
effect size greater than 0.4 that one starts to see a 
positive correlation between the effect sizes for replicate 
and original.


## When science and commercial interests collide

### The tobacco and fossil fuel industries {-}

The tobacco industry has made extensive use of "the science is not settled" 
arguments in its efforts to dismiss the evidence that smoking causes lung cancer.
The goal has been to raise doubt, create confusion and undermine the science.
The same PR firms, and the same researchers used to support these efforts
were later used in the attempt to undermine climate science.^[https://www.scientificamerican.com/article/tobacco-and-oil-industries-used-same-researchers-to-sway-public1/>]  

In spite of the support that has been available from the fossil
fuel industry for research that is critical of mainstream climate science
research, no substantially different alternative account has emerged, and 
no climate change models have emerged that give results that are widely
different from the consensus. An interesting case is that of
Richard Muller’s Berkeley Earth Surface Temperature Study (BEST),
with a large part of the funding coming from the right-wing billionaire 
Charles Koch,  known for funding climate skeptic groups such as the 
Heartland Institute.

Richard Muller had been known for his skepticism, in part supported
by legitimate scientific concerns.  He made headlines when he announced 
his acceptance of what climate scientists had already been saying 
for more than 15 years previous. 
> After years of denying global warming, physicist Richard Muller now says "global warming is real and humans are almost entirely the cause."^[https://courses.seas.harvard.edu/climate/eli/Courses/global-change-debates/Sources/Hockeystick-global-temperature/more/Richard-Muller/Muller-is-a-believer-Hallelujah.pdf>]

The broad sweep of work in climate science is, because it has survived
informed critique, and because of the diversity of contributing skills
and data, unusually secure.  Details, especially as they affect what may 
happen in individual countries, are subject to continual revision.

A particular issue is the role of the greenhouse gases,  and of their 
interactions with water vapour.  Much larger than their direct effect
is the contribution that comes from their warming of the air in which 
water vapour is present, allowing it to retain more vapour and trap 
more heat).  A standard denialist trump card has been to claim the 
authority of scientists who have standing in their own areas for the 
claim that the contribution of greenhouse gases is inconsequential 
relative to that of water 
vapour.^[See <https://west.web.unc.edu/climate-change/> and
<>]
The scientists involved are among a number who have fossil fuel 
industry links, and have been willing to allow themselves to be 
used as advocates for an industry that sees action on climate 
change as a threat.^[<https://insideclimatenews.org/news/12032015/leaked-email-reveals-whos-who-list-climate-denialists-merchants-of-doubt-oreskes-fred-singer-marc-morano-steve-milloy>]

### Big Pharma {-}

Between 1999 and 2019, opioid deaths in the United States increased
by a factor of six, to almost 50,000.  

A large contributor has been the increased use of prescription
opioids. Purdue Pharma stands out for its aggressive marketing of 
oxycodone, sold under the brand name OxyContin, arguing that 
concerns over addiction and other dangers from the drugs were 
overblown. In September 2019, Purdue Pharma declared bankruptcy, 
facing significant liability in OxyContin and opioid addiction 
lawsuits.  Details of settlements are still being worked in the 
courts.^[ <https://topclassactions.com/lawsuit-settlements/open-lawsuit-settlements/opioids/purdue-opioid-addiction-class-action-settlement/>]

Strict regulations govern, in most countries, the approval of 
prescription drugs. Purdue Pharma exploited the much more
limited control over off-label use of approved drugs, i.e.,
use for purposes for which they have not received formal
approval, and for a time stayed under the radar.

Another scandal that demonstrates how drug companies can
sometimes work their way around the approval process
concerns the drug Vioxx, likewise marketed as a 
painkiller.[@valentine2007timeline]  Concerns that the
drug might be increasing the risk of heart attacks began
to emerge in the months following its approval for use
in May 1999. By November 1, a study set up to investigate
these concerns reported 79 heart attacks out of 4000
among those taking the drug, as opposed to 41 among a
comparator group that was taking naproxen.  The drug
continued on the market as the evidence against Vioxx
strengthened further.  It was argued, with no evidence
to back this up, that naproxen likely had a protective 
effect.  In any case, why allow Vioxx to go to market
when naproxen was clearly carried less risk.

In September 2004,
when a colon-polyp prevention study showed that Vioxx
increased the risk of heart attack after 18 months,
Merck withdrew the drug.  A Lancet paper that was 
published later estimated that between 88,000 and 
140,000 Americans had heart attacks from taking 
Vioxx.^[@juni2004risk] The increased risk continued 
long after patients had ceased taking the drug.

### What can one trust? {-}

One may hope that checks on any new drug will be
stricter than was the case for Vioxx, that lessons
have been learned, that where in future drugs come
up for approval, checks will continue on possible 
long-term effects. With fringe and quack medicines,
there are no such checks.

It has been interesting to follow approval processes
for Covid-19 vaccines.  At the time of writing, the
Pfizer, Astrazena and Moderna vaccines have had, in
addition to their testing in clinical trials,
extra-ordinary levels of testing in clinical practice,
with risks that are small relative to the small risk
that we take ever time we cross a busy road.
 
## Tricks used to dismiss established scientific results

The headings, and some of commentary, are adapted from an article by 
Associate Professor Hassan Vally from La Trobe University, 
[that appeared in _The Conversation_](https://theconversation.com/5-ways-to-spot-if-someone-is-trying-to-mislead-you-when-it-comes-to-science-138814?utm_medium=email&utm_campaign=Latest%20from%20The%20Conversation%20for%20March%209%202021%20-%201883318379&utm_content=Latest%20from%20The%20Conversation%20for%20March%209%202021%20-%201883318379+CID_6009c8d7af2a01f376a88d0491598cfa&utm_source=campaign_monitor&utm_term=5%20ways%20to%20spot%20if%20someone%20is%20trying%20to%20mislead%20you%20when%20it%20comes%20to%20science)^[<https://theconversation.com/5-ways-to-spot-if-someone-is-trying-to-mislead-you-when-it-comes-to-science-138814?utm_medium=email&utm_campaign=Latest%20from%20The%20Conversation%20for%20March%209%202021%20-%201883318379&utm_content=Latest%20from%20The%20Conversation%20for%20March%209%202021%20-%201883318379+CID_6009c8d7af2a01f376a88d0491598cfa&utm_source=campaign_monitor&utm_term=5%20ways%20to%20spot%20if%20someone%20is%20trying%20to%20mislead%20you%20when%20it%20comes%20to%20science>]

1. "The ‘us versus them’ narrative"  
The powers that be are trying to deceive us."  Ask who is
making real attempt to deceive --- commercial interest groups,
peddlers of quack treatments, influence peddlers, . . .
2. ‘I’m not a scientist, but…’
Meaning perhaps: "I’m not a scientist, but that does not stop me
making an authoritative pronouncement that flies in the face of
established results."
Or: “I know what the science says, but I’m keeping an open mind”.  
Politicians are among the most frequent offenders.
3. Reference to ‘the science not being settled’  
There are of course times when the science is not settled, and when this is 
the case, one can expect scientists to openly argue different points of view
based on the evidence available.  Or, what has come to be accepted wisdom
may turn out to be wrong or in need of substantial revision.  But challenges
to the accepted wisdom have to be carefully argued, and themselves survive
informed critique.
4. Overly simplistic explanations  
Oversimplifications and generalizations are central to many conspiracy theory 
arguments.  Science is often messy, complex and full of nuance. The truth can 
be much harder to explain, and can sometimes sound less plausible, than a 
simple but incorrect explanation.  Use of simplistic statistical arguments
is common, e.g., fit a line to the cherry-picked years 1998-2008, ignoring
year to year correlation as well as influences that operate over longer time 
periods.
5. Cherry-picking  
One is not entitled to choose one study over another just because it aligns
with what you prefer to believe. This is not how science works.  
Not all studies are equal; some provide much stronger evidence than others.
The way that choices are made has to stand up to critical scrutiny.
